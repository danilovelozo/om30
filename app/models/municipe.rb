class Municipe < ApplicationRecord
  include PgSearch::Model

  has_one_attached :photo

  pg_search_scope :search_by_municipe, against: %i[full_name cpf email],
    using: {
      tsearch: {
        prefix: true
      }
    }

  has_one :address, dependent: :destroy, inverse_of: :municipe

  accepts_nested_attributes_for :address

  validates :full_name, :cpf, :cns, :email, :birthdate, :phone, :status, presence: true

  validates_cpf_format_of :cpf

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

  default_scope { order(created_at: :desc) }
end

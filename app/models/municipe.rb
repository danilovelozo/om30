class Municipe < ApplicationRecord
  has_one :address, dependent: :destroy, inverse_of: :municipe

  accepts_nested_attributes_for :address

  validates :full_name, :cpf, :cns, :email, :birthdate, :phone, :status, presence: true

  validates_cpf_format_of :cpf

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end

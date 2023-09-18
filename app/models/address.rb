class Address < ApplicationRecord
  belongs_to :municipe

  validates :full_name, :cpf, :cns, :email, :birthdate, :phone, :status, presence: true
end

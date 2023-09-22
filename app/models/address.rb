class Address < ApplicationRecord
  belongs_to :municipe

  validates :zipcode, :street_name, :number, :neighborhood, :city, :state, presence: true
end

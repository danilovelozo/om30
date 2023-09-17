class Municipe < ApplicationRecord
  has_many :addresses, dependent: :destroy
end

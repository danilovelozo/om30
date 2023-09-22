require 'rails_helper'

RSpec.describe Address, type: :model do
  describe 'associations' do
    it { should belong_to(:municipe) }
  end

  describe 'validations' do
    it { should validate_presence_of(:zipcode) }
    it { should validate_presence_of(:street_name) }
    it { should validate_presence_of(:number) }
    it { should validate_presence_of(:neighborhood) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
  end
end
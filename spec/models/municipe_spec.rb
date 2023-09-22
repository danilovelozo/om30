require 'rails_helper'

RSpec.describe Municipe, type: :model do
  describe 'associations' do
    it { should have_one(:address) }
  end

  describe 'validations' do
    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:cpf) }
    it { should validate_presence_of(:cns) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:birthdate) }
    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:status) }


    context 'when the email is formatted correctly' do
      it { is_expected.to allow_value("velozo.dan@gmail.com").for(:email) }
    end

    context 'when an email is formatted incorrectly' do
      it { is_expected.not_to allow_value("xpto@sss").for(:email) }
    end

    context 'when the cpf is formatted correctly' do
      it { is_expected.to allow_value("955.896.570-75").for(:cpf) }
    end

    context 'when an cpf is formatted incorrectly' do
      it { is_expected.not_to allow_value("434.224.234-22").for(:cpf) }
    end
  end
end
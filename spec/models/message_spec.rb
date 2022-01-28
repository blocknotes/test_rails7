require 'rails_helper'

RSpec.describe Message, type: :model do
  describe 'validations' do
    let(:message) { described_class.new }

    it 'fails to validate', :aggregate_failures do
      expect(message).not_to be_valid
      expect(message.errors.full_messages).to match_array(["Author can't be blank", "Content can't be blank"])
    end
  end
end

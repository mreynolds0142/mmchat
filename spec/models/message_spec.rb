require 'rails_helper'

describe Message do
  it 'instantiates a new object' do
    m = Message.new
    expect(m).not_to be_nil
  end

  describe 'validations' do
    it 'a new message requires a receiver' do
      m = Message.new
      expect(m.save).to be false
      expect(m.errors.full_messages.join(',')).to match(/Receiver user/)
    end
  end
end

require 'rails_helper'

RSpec.describe Cipher::CaesarEncoderCommand do
  let(:subject) { Cipher::CaesarEncoderCommand.proccess(shift, text) }
  let(:shift) { 2 }
  let(:text) { 'abc' }

  it 'returns encoded text' do
    expect(subject).to eq('cde')
  end
end

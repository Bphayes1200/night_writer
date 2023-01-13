require_relative 'spec_helper.rb'

RSpec.describe 'Message_converter' do 
  it 'will exist' do 
    new_message = 'message_spec.txt'
    writer = Writer.new(new_message)
    message = writer.message
    message_converter = MessageConverter.new(message)
    
    expect(message_converter).to be_a(MessageConverter)
  end

  it 'will convert a message string into an array of letters' do 
    new_message = 'message_spec.txt'
    writer = Writer.new(new_message)
    message = writer.message
    message_converter = MessageConverter.new(message)

    expect(message_converter.message_array).to eq(["s", "a", "m", "p", "l", "e"])
  end

  it 'will have a hash of letters to brail' do 
    new_message = 'message_spec.txt'
    writer = Writer.new(new_message)
    message = writer.message
    message_converter = MessageConverter.new(message)

    expect(message_converter.braille_alphabet).to be_a(Hash)
  end

  it 'will find all of the braiile letters for a message' do 
    new_message = 'message_spec.txt'
    writer = Writer.new(new_message)
    message = writer.message
    message_converter = MessageConverter.new(message)

    expect(message_converter.find_all_braille).to eq([[".0", "0.", "0."], ["0.", "..", ".."], ["00", "..", "0."], ["00", "0.", "0."],  ["0.", "0.", "0."], ["0.", ".0", ".."]])
  end

  it 'will convert message to braile' do 
    new_message = 'message_spec.txt'
    writer = Writer.new(new_message)
    message = writer.message
    message_converter = MessageConverter.new(message)

    expect(message_converter.convert_to_braille).to eq(".00.00000.0.\n0.....0.0..0\n0...0.0.0...")
  end
end
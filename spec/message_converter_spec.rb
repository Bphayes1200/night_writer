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

  it 'will format incoming braille to be converted' do 
    new_message = 'braille_spec.txt'
    reader = Reader.new(new_message)
    message = reader.message
    message_converter = MessageConverter.new(message)

    expect(message_converter.format_incoming_braille).to eq([[".0", "0.", "0."], ["0.", "..", ".."], ["00", "..", "0."], ["00", "0.", "0."],  ["0.", "0.", "0."], ["0.", ".0", ".."]])
  end

  it 'will return the string of the decoded message' do 
    new_message = 'braille_spec.txt'
    reader = Reader.new(new_message)
    message = reader.message
    message_converter = MessageConverter.new(message)

    expect(message_converter.braille_to_english).to eq("sample")
  end

  it 'will check to see if a new message file is created' do 
    new_message = 'braille_spec.txt'
    reader = Reader.new(new_message)
    message = reader.message
    message_converter = MessageConverter.new(message)

    expect(message_converter.create_new_english_file('message_spec.txt')).to eq("Created new file 'message_spec.txt' containing 6 characters")
  end

  it 'will check to see if a new braille file is created' do 
    new_message = 'message_spec.txt'
    writer = Writer.new(new_message)
    message = writer.message
    message_converter = MessageConverter.new(message)

    expect(message_converter.create_new_braille_file('braille_spec.txt')).to eq("Created new file 'braille_spec.txt' containing 6 characters")
  end
end
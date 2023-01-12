require './lib/writer'
require './lib/message_converter'

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
    
  end
end
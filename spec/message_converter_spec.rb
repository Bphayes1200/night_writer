require './lib/writer'
require './lib/message_converter'

RSpec.describe 'Message_converter' do 
  it 'will exist' do 
    message_converter = MessageConverter.new
    
    expect(message_converter).to be_a(MessageConverter)
  end
  it 'will have a hash of letters to brail' do 
    
  end
end
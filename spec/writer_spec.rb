require './lib/writer'

RSpec.describe Writer do 
  it 'will exist' do 
    new_message = 'message_spec.txt'
    writer = Writer.new(new_message)

    expect(writer).to be_a(Writer)
  end

  it 'will read a file and puts a message' do 
    new_message = 'message_spec.txt'
    writer = Writer.new(new_message)
    
    expect(writer.message).to eq("sample message")
  end


end
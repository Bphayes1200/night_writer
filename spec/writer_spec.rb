require './lib/writer'

RSpec.describe Writer do 
  it 'will exist' do 
    writer = Writer.new

    expect(writer).to be_a(Writer)
  end

  it 'will read a file and puts a message' do 
    writer = Writer.new
    
    expect(writer.message).to eq("sample_message")
    
  end
end
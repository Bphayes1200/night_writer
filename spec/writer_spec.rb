require './lib/writer'

RSpec.describe Writer do 
  it 'will exist' do 
    writer = Writer.new

    expect(writer).to be_a(Writer)
  end
end
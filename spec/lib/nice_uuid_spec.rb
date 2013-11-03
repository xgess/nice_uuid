require_relative '../../lib/nice_uuid'

describe NiceUuid do
  describe 'generate' do
    before { @nice_uuid = NiceUuid::generate }

    it 'is a string' do
      @nice_uuid.should be_an_instance_of(String)
    end

    it 'is has 1 fewer dashes than number of words' do
      @nice_uuid.count('-').should == (NiceUuid::DEFAULT_NUMBER_OF_WORDS - 1)
    end

    it 'eventually yields a solution for an obnoxious request' do
      NiceUuid::generate(27).length.should <= 27
    end
  end
end
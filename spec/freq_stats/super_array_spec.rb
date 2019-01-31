# please excuse the my little pony samples for testing
# teaching my daughter while creating the tests.
RSpec.describe 'FreqStats::SuperArray' do
  before do
    @test_arry = []
    20.times { @test_arry << 'Pinkie Pie' }
    10.times { @test_arry << 'Rainbow Dash' }
    5.times { @test_arry << 'Fluttershy' }
    25.times { @test_arry << 'Twilight' }
    3.times { @test_arry << 'Derpy Hooves' }
  end 

  describe ".mode" do
    it "should return Twilight as the mode" do
      expect(@test_arry.length).to eq(63)
      expect(FreqStats::SuperArray.new(@test_arry).mode).to eq(['Twilight', 25])
    end 
  end

  describe ".top_3" do
    it 'return an array of 3 arrays' do
      top_3 = FreqStats::SuperArray.new(@test_arry).top_3
      expect(top_3.length).to eq(3)
      expect(top_3).to be_a(Array)  
      expect(top_3).to eq ['Twilight', 'Pinkie Pie', 'Rainbow Dash']
    end
  end 

  describe ".freq_list" do
    it 'return an array of arrays' do
      freq = FreqStats::SuperArray.new(@test_arry).freq_list
      expect(freq.length).to eq(5)
      # tests return type and value.
      freq.each do |i| 
        expect(i).to be_a(Array)
        expect(i.length).to eq(2)
      end 
    end

    it 'return an specific results' do
      freq = FreqStats::SuperArray.new(@test_arry).freq_list
      expect(freq[0]).to eq(['Twilight', 25])
      expect(freq[1]).to eq(['Pinkie Pie', 20])
      expect(freq[2]).to eq(['Rainbow Dash', 10])
      expect(freq[3]).to eq(['Fluttershy', 5])
      expect(freq[4]).to eq(['Derpy Hooves',3])
    end
  end 
end

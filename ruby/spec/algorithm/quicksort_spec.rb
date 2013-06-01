require "algorithm/quicksort"

describe "#quicksort" do let(:list) { [6,2,8,3,4,1,9,0,5,7] }
  let(:sorted_list) { [0,1,2,3,4,5,6,7,8,9] }

  it "should sort a list" do
    Algorithm.quicksort(list).should == sorted_list
  end
end

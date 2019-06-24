describe "#permutations" do
  let(:arr) { [1, 2, 3] }

  before(:each) do
    arr = [1, 2, 3, [4, [5, 6]], [[[7]], 8]]
    expect(arr).not_to receive(:permutation)
    arr.permutation
  end

  it "returns all permutations of an array" do
    perms_arr = arr.permutation.to_a
    
    expect(permutations(arr)).to match_array(perms_arr)
  end
end
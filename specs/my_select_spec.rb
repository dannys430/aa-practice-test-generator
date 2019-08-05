describe "Array#my_select" do
  let(:arr) { [1, 2, 3] }

  it "should NOT use Ruby's built-in `Array#select` or `Array#reject` method" do
    expect(arr).not_to receive(:select)
    expect(arr).not_to receive(:select!)
    expect(arr).not_to receive(:reject)
    expect(arr).not_to receive(:reject!)
    expect(arr).not_to receive(:dup)
    arr.my_select { |num| num > 1 }
  end

  it "It correctly selects elements according to the passed in block" do
    expect(arr.my_select { |num| num > 1 }).to eq([2, 3])
  end

  it "It returns an empty array if there are no matches" do
    expect(arr.my_select { |num| num == 4 }).to eq([])
  end
end

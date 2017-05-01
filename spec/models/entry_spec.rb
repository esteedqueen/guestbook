require 'rails_helper'

describe Entry do
  it 'is valid with a name and a message' do
    entry = build(:entry)
    expect(entry).to be_valid
  end

  it 'is invalid without a name' do
    entry = build(:entry, name: nil)
    entry.valid?
    expect(entry.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without a message' do
    entry = build(:entry, message: nil)
    entry.valid?
    expect(entry.errors[:message]).to include("can't be blank")    
  end

  it "has a valid factory" do
    expect(build(:entry)).to be_valid
  end

end

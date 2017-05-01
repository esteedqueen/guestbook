require 'rails_helper'

describe Entry do
  context 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :message }
  end

  it "has a valid factory" do
    expect(build(:entry)).to be_valid
  end

end

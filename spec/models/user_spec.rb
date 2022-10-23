require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes"
  it "is not valid without a full name"  do
    user = User.new(full_name: nil)
    expect(user).to_not be_valid
  end
  it "is not valid without an email"
  it "is not valid without a phone number"
  it "is not valid without account type"
  it "is not valid without a password"
end

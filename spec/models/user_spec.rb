require 'spec_helper'

describe User do
  before {@user = FactoryGirl.build(:user)}
  subject {@user}
  it {should respond_to(:email)}
  it {should respond_to(:password)}
  it {should respond_to(:password_confirmation)}
  it {should respond_to(:auth_token)}

  it { should be_valid }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_confirmation_of(:password) }
  it { should allow_value('example@domain.com').for(:email) }
  it {should validate_uniqueness_of(:auth_token)}
end

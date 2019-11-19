require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(first_name: 'Test', last_name: "Testerson",
                      email: 'test@example.com', password: '1', password_confirmation: '1')
  }
  describe 'Validations' do
    it "is not valid without a matching password and confirmation" do
      subject.password_confirmation = '12345'
      expect(subject).to_not be_valid
    end
    it "is not valid without a unique email address" do
      @user1 = User.new first_name: 'Test', last_name: 'Tester2', email: 'test@example.com', password: '123', password_confirmation: '123'
      @user1.save
      @user2 = User.new first_name: 'Test', last_name: 'Tester2', email: 'TEST@example.COM', password: '123', password_confirmation: '123'
      expect(@user2.save).to be false
    end
    it "is not valid without an email address" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a first name" do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a last name" do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end
    it "is not valid with a short password" do
      subject.password = '1'
      expect(subject).to_not be_valid
    end
  end
  describe '.authenticate_with_credentials' do
    it "should not validate with wrong credentials" do
      @user = User.create(first_name: 'Test', last_name: "Testerson",
      email: 'test@example.com', password: '123', password_confirmation: '123')
      authenticate = User.authenticate_with_credentials(@user.email, @user.password)
      expect(authenticate).to_not be_valid
    end
  end

end
require 'spec_helper'

describe "Tests for model User" do

	before do
		@user = User.new(name: "Pavel", email: "rrr@mail.ru", 
						 password: "qqqqeee333", password_confirmation: "qqqqeee333")
	end

	subject { @user }

	it { should respond_to(:name) }
	it { should respond_to(:email) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }

	it { should be_valid }

	describe "Тесты имени" do
		it do
			@user.name = " "
			should_not be_valid 
		end
	end

	describe "Тесты email" do
		it do
			@user.email = " "
			should_not be_valid
			@user.email = "3333@a.a.a.a.a."
			should_not be_valid
			@user.email = "a.@ru."
			should_not be_valid 
		end
	end	

	describe "Тесты пароля" do
		it do
			@user = User.new(name: "Pavel", email: "rrr@mail.ru", 
						 	 password: " ", password_confirmation: " ")
			should_not be_valid
		end
	end	

end

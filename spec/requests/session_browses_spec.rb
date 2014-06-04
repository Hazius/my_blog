require 'spec_helper'

describe "SessionBrowses" do

	before do
		@user = User.create(name: "Pavel", email: "rrr@mail.ru", 
						    password: "qqqqeee333", password_confirmation: "qqqqeee333")
	end
    


	it "пробуем войти под созданным пользователем" do 
		visit new_session_path
		fill_in "session_email", with: "rrr@mail.ru"
		fill_in "session_password", with: "qqqqeee333"
		click_button "Sign in"
		expect(page).to have_content("Добро пожаловать!")
	end

end

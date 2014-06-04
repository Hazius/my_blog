require 'spec_helper'

describe "UserBrowserRegistrations" do

	it "Пробуем зарегиться" do 
		visit new_user_path
		fill_in "user_name", with: "Pavel"
		fill_in "user_email", with: "rrr@mail.ru"
		fill_in "user_password", with: "qqqqeee333"
		fill_in "user_password_confirmation", with: "qqqqeee333"
		click_button "Create User"
		expect(page).to have_content("Добро пожаловать!")
	end

end

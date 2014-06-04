require 'spec_helper'

describe "Welcomes" do

	subject { page }

  describe "Home page" do

	before { visit root_path }

    it { should have_content('Добро пожаловать!') }
	it { should_not have_content("Белеберда") }
	it { should have_title("Движок блога от Hazius") }

  end

  describe "show_users_with_blog" do

  	before { visit show_users_with_blog_path }

  	it { should have_content('Все Блоги') }
  	it { should have_title("Движок блога от Hazius") }

  end

end

require 'rails_helper'

require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end

=begin	
	строка

	visit '/static_pages/home'

	использует Capybara функцию visit для симуляции посещения 
	URL /static_pages/home в браузере, в то время как строка

	expect(page).to have_content('Sample App')

	использует переменную page (также предоставленную Capybara) 
	для описания ожидания того что данная страница должна содержать правильный контент.		
=end




=begin
	require 'rails_helper'

	RSpec.describe "StaticPages", type: :request do
	  describe "GET /static_pages" do
	    it "works! (now write some real specs)" do
	      get static_pages_index_path
	      expect(response).to have_http_status(200)
	    end
	  end
	end
=end
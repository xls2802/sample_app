require 'rails_helper'

require 'spec_helper'



describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }  # добавил, поскольку метод full_title не видит

  subject { page }


  it "should have the right links on the layout" do
   visit root_path
    click_link "About"
    expect(page).to have_title(" #{base_title} | About Us")
    click_link "Help"
    expect(page).to have_title(" #{base_title} | Help")# заполнить
    click_link "Contact"
    expect(page).to have_title(" #{base_title} | Contact")# заполнить
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(" #{base_title} | Sign up")# заполнить
    click_link "Sample app"
    expect(page).to have_title("#{base_title}")# заполнить
  end



  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(" #{base_title} | Help") }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(" #{base_title} | Contact") }
  end
end











=begin
  require 'spec_helper'

  describe "Static pages" do

    let(:base_title) { "Ruby on Rails Tutorial Sample App" }

    subject { page }

    describe "Home page" do
      before { visit root_path }

      it { should have_content('Sample App') }
      it { should have_title("#{base_title}") }
      it { should_not have_title('| Home') }
    end


    describe "Help page" do

      it "should have the content 'Help'" do      
        expect(page).to have_content('Help')
      end

      it "should have the title 'Help'" do      
        expect(page).to have_title("#{base_title} | Help")
      end
    end

    describe "About page" do

      it "should have the content 'About Us'" do
        visit about_path
        expect(page).to have_content('About Us')
      end

      it "should have the title 'About Us'" do
        visit about_path
        expect(page).to have_title("#{base_title} | About Us")
      end
    end

    describe "Contact page" do

      it "should have the content 'Contact'" do
        visit contact_path
        expect(page).to have_content('Contact')
      end

      it "should have the title 'Contact'" do
        visit contact_path
        expect(page).to have_title("#{base_title} | Contact")
      end
    end
  end
=end

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
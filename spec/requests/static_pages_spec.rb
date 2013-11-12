require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do

  	it "Should have content Sample App" do
  		visit '/static_pages/home'
  		page.should have_selector('h1', text: 'Sample App')
    end

    it "Should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: 'Ruby on Rails Sample App | Home')
  	end

  end

  describe "Help page" do

    before { visit '/static_pages/help' }

  	it { page.should have_selector('h1', text: 'Help') }
    it { page.should have_selector('title', text: 'Ruby on Rails Sample App | Help') }
  end


  describe "About Page" do

    before { visit '/static_pages/about' }

  	it { page.should have_selector('h1', text: 'About us') }

    it { page.should have_selector('title', text: 'Ruby on Rails Sample App | About') }

  end

  describe "Contact Page" do

    before { visit '/static_pages/contact' }

    it { page.should have_selector('h1', text: 'Contact us') }

    it { page.should have_selector('title', text: 'Ruby on Rails Sample App | Contact') }

  end
end

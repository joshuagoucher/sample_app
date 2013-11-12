require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do

    before { visit '/static_pages/home' }

  	it { page.should have_selector('h1', text: 'Sample App') }

    it { page.should have_selector('title', text: 'Ruby on Rails Sample App') }

    it { page.should_not have_selector('title', text: '| Home')}

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

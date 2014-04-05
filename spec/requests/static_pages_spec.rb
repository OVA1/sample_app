require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe "help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
      end
  end

  describe "about us" do
    
    it "should have the content 'About Us'" do
     visit'/static_pages/about'
     expect(page).to have_content('About Us')
    end

     it "should have the right title" do
    visit '/static_pages/home' 
    expect(page).to have_title("Ruby on Rails")
    end

  end

  describe "contact" do
    it "should have content Contact" do
    visit '/static_pages/contact' 
    expect(page).to have_content("contact")
    end
  end


  

end


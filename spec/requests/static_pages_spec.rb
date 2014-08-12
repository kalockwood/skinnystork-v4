require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

    it "should have the content 'Home'" do
    	visit '/static_pages/home'
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      	expect(page).to have_content('home')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Home")
    end
  end
end

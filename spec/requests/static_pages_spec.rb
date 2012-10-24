require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path}

    it { should have_selector('h1', text: 'Sample App')}
    it { should have_selector('title', text: full_title(""))}

  end

  describe "Help page" do
    before { visit help_path}

    it "should have the h1 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      page.should have_selector('title',
                        :text => full_title("Help"))
    end
  end

  describe "About page" do
    before { visit about_path}

    it "should have the h1 'About Us'" do
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title',
                    :text => full_title("About Us"))
    end
  end

  describe "Contact page" do
    before { visit contact_path}

    it "should have the h1 'Contact'" do
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      page.should have_selector('title',
                    :text => full_title('Contact'))
    end
  end
end
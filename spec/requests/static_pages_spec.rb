require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Mix_Twitter') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }

    it "should have the right links on the layout" do
    visit root_path
    click_link "Help"
    page.should # fill in
    click_link "Contact"
    page.should # fill in
    click_link "Home"
    click_link "Sign up now!"
    page.should # fill in
  end
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end


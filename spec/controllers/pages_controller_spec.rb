require 'spec_helper'

describe PagesController do
  render_views
  #
  #describe "GET 'home'" do
  #  it "returns http success" do
  #    get 'home'
  #    response.should be_success
  #  end
  #
  #  it "should have the right title" do
  #    get 'home'
  #    response.should have_selector("title",
  #                                  :content => "Ruby on Rails Tutorial Sample App | Home")
  #  end
  #  it "should not have a non-blank body" do
  #    get 'home'
  #    response.body.should_not =~ /<body>\s*<\/body>/
  #  end
  #end
  #
  #describe "GET 'help'" do
  #  it "returns http success" do
  #    get 'help'
  #    response.should be_success
  #  end
  #
  #  it "should have the right title" do
  #    get 'help'
  #    response.should have_selector("title",
  #                                  :content => "Ruby on Rails Tutorial Sample App | Contact")
  #  end
  #end
  #
  #describe "GET 'about'" do
  #  it "returns http success" do
  #    get 'about'
  #    response.should be_success
  #  end
  #
  #  it "should have the right title" do
  #    get 'about'
  #    response.should have_selector("title",
  #                                  :content => "Ruby on Rails Tutorial Sample App | About")
  #  end
  #end

  subject { page }

  describe "Home page" do
    before { visit root_path }

    #it "should have the h1 'Sample App'" do
    #  page.should have_selector('h1', text: 'Sample App')
    #end

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector 'title',
                              text: full_title('') }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end

end
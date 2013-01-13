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


  shared_examples_for "all static pages" do
    it { should have_selector('h1',    text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Static pages" do
    it "should have the right links on the layout" do
      visit root_path
      click_link "About"
      page.should have_selector 'title', text: full_title('About Us')
      click_link "Help"
      page.should have_selector 'title', text: full_title('Help')
      click_link "Contact"
      page.should have_selector 'title', text: full_title('Contact')
      click_link "Home"
      click_link "Sign up now!"
      page.should have_selector 'title', text: full_title('Sign up')
      click_link "sample app"
      page.should have_selector 'title', text: full_title('')
      #click_link "Sign in"
      #page.should have_selector 'title', text: full_title('Sign in')
    end
  end

  describe "Home page" do
    before { visit root_path }
    #[TW] für shared_examples notwendige dynamisch allokierte Variable
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    #it "should have the h1 'Sample App'" do
    #  page.should have_selector('h1', text: 'Sample App')
    #end

    it_should_behave_like "all static pages"
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }
    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:heading)    { 'About' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading)    { 'Contact' }
    let(:page_title) { 'Contact' }

    it_should_behave_like "all static pages"
  end



end
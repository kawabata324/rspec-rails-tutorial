require 'rails_helper'

RSpec.describe "StaticPages", type: :system do
  before do
    driven_by(:rack_test)
  end
  before do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "#home" do
    scenario "タイトルが正しいこと" do
      visit "/static_pages/home"
      expect(page.title).to eq "#{@base_title}"
    end
  end
  describe "#help" do
    scenario "タイトルが正しいこと" do
      visit "/static_pages/help"
      expect(page.title).to eq "Help | #{@base_title}"
    end
  end
  describe "#about" do
    scenario "タイトルが正しいこと" do
      visit "/static_pages/about"
      expect(page.title).to eq "About | #{@base_title}"
    end
  end
  describe "#contact" do
    scenario "タイトルが正しいこと" do
      visit "/static_pages/contact"
      expect(page.title).to eq "Contact | #{@base_title}"
    end
  end
end

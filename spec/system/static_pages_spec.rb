require 'rails_helper'

RSpec.describe "StaticPages", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe "#home" do
    before do
      @base_title = "Ruby on Rails Tutorial Sample App"
    end
    scenario "タイトルが正しいこと" do
      visit "/static_pages/home"
      expect(page).to have_title "Home | #{@base_title}"
    end
  end
  describe "#help" do
    scenario "タイトルが正しいこと" do
      visit "/static_pages/help"
      expect(page).to have_title "Help | #{@base_title}"
    end
  end
  describe "#about" do
    scenario "タイトルが正しいこと" do
      visit "/static_pages/about"
      expect(page).to have_title "About | #{@base_title}"
    end
  end
end

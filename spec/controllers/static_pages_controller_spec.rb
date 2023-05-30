require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "#home" do
    it "レスポンスが正しいこと" do
      get :home
      expect(response).to be_successful
      expect(response.status).to eq 200
    end
  end
  describe "#help" do
    it do
      get :help
      expect(response).to be_successful
      expect(response.status).to eq 200
    end
  end
  describe "#about" do
    it do
      get :about
      expect(response).to be_successful
      expect(response.status).to eq 200
    end
  end
end

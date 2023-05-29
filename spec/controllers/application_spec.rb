require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe "#hello" do
    it "レスポンスが正しいこと" do
      get :hello
      expect(response).to be_successful
    end
  end
  it "ステータス 200を返すこと" do
    get :hello
    expect(response).to have_http_status "200"
  end
end

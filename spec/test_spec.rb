require 'rails_helper'

RSpec.describe "Welcome", type: :request do
  it " Result test" do
    expect(Result.new(key: 123, name: "berlin", category: "rainy", text: "hello world", average: 1, minimum:1, maximum:1)).to be_valid
  end

  it " Sub test" do
    expect(Sub.new(email: "test@test.com")).to be_valid
  end

  before do
    get '/results'
  end

  it " API Test" do
    expect(response).to have_http_status(:success)
  end

end
require "spec_helper"

describe "My search page" do
  it "has results" do
    visit "http://google.com"
    fill_in "q", with: "Polygon"
    click_on "Google Search"
    page.text.must_include "polygon.com"
    page.text.must_include "twitter.com/Polygon"
  end
end
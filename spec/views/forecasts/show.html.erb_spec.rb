require 'rails_helper'

RSpec.describe "forecasts/show", type: :view do
  before(:each) do
    @forecast = assign(:forecast, Forecast.create!(
      :lat => 2.5,
      :lng => 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
  end
end

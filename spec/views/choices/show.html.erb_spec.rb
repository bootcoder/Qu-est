require 'spec_helper'

describe "choices/show" do
  before(:each) do
    @choice = assign(:choice, stub_model(Choice,
      :body => "MyText",
      :correct => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end

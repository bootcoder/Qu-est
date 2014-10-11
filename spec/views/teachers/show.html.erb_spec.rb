require 'spec_helper'

describe "teachers/show" do
  before(:each) do
    @teacher = assign(:teacher, stub_model(Teacher,
      :first_name => "MyText",
      :last_name => "",
      :email => "MyText",
      :phone => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end

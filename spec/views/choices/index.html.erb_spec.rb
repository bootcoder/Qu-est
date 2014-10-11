require 'spec_helper'

describe "choices/index" do
  before(:each) do
    assign(:choices, [
      stub_model(Choice,
        :body => "MyText",
        :correct => false
      ),
      stub_model(Choice,
        :body => "MyText",
        :correct => false
      )
    ])
  end

  it "renders a list of choices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

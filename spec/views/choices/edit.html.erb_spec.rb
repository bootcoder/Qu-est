require 'spec_helper'

describe "choices/edit" do
  before(:each) do
    @choice = assign(:choice, stub_model(Choice,
      :body => "MyText",
      :correct => false
    ))
  end

  it "renders the edit choice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", choice_path(@choice), "post" do
      assert_select "textarea#choice_body[name=?]", "choice[body]"
      assert_select "input#choice_correct[name=?]", "choice[correct]"
    end
  end
end

require 'spec_helper'

describe "choices/new" do
  before(:each) do
    assign(:choice, stub_model(Choice,
      :body => "MyText",
      :correct => false
    ).as_new_record)
  end

  it "renders new choice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", choices_path, "post" do
      assert_select "textarea#choice_body[name=?]", "choice[body]"
      assert_select "input#choice_correct[name=?]", "choice[correct]"
    end
  end
end

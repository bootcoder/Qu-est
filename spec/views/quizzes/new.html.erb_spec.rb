require 'spec_helper'

describe "quizzes/new" do
  before(:each) do
    assign(:quiz, stub_model(Quiz,
      :name => "MyText"
    ).as_new_record)
  end

  it "renders new quiz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", quizzes_path, "post" do
      assert_select "textarea#quiz_name[name=?]", "quiz[name]"
    end
  end
end

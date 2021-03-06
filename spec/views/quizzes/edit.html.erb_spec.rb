require 'spec_helper'

describe "quizzes/edit" do
  before(:each) do
    @quiz = assign(:quiz, stub_model(Quiz,
      :name => "MyText"
    ))
  end

  it "renders the edit quiz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", quiz_path(@quiz), "post" do
      assert_select "textarea#quiz_name[name=?]", "quiz[name]"
    end
  end
end

require 'spec_helper'

describe "quizzes/show" do
  before(:each) do
    @quiz = assign(:quiz, stub_model(Quiz,
      :name => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end

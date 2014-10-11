require 'spec_helper'

describe "courses/new" do
  before(:each) do
    assign(:course, stub_model(Course,
      :name => "MyText",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", courses_path, "post" do
      assert_select "textarea#course_name[name=?]", "course[name]"
      assert_select "textarea#course_description[name=?]", "course[description]"
    end
  end
end

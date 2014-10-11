require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :first_name => "MyText",
      :last_name => "",
      :email => "MyText",
      :phone => "MyText"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", students_path, "post" do
      assert_select "textarea#student_first_name[name=?]", "student[first_name]"
      assert_select "input#student_last_name[name=?]", "student[last_name]"
      assert_select "textarea#student_email[name=?]", "student[email]"
      assert_select "textarea#student_phone[name=?]", "student[phone]"
    end
  end
end

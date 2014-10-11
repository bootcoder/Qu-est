require 'spec_helper'

describe "teachers/new" do
  before(:each) do
    assign(:teacher, stub_model(Teacher,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new teacher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", teachers_path, "post" do
      assert_select "input#teacher_first_name[name=?]", "teacher[first_name]"
      assert_select "input#teacher_last_name[name=?]", "teacher[last_name]"
      assert_select "input#teacher_email[name=?]", "teacher[email]"
      assert_select "input#teacher_phone[name=?]", "teacher[phone]"
    end
  end
end

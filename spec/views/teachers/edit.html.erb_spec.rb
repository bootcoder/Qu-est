require 'spec_helper'

describe "teachers/edit" do
  before(:each) do
    @teacher = assign(:teacher, stub_model(Teacher,
      :first_name => "MyText",
      :last_name => "",
      :email => "MyText",
      :phone => "MyText"
    ))
  end

  it "renders the edit teacher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", teacher_path(@teacher), "post" do
      assert_select "textarea#teacher_first_name[name=?]", "teacher[first_name]"
      assert_select "input#teacher_last_name[name=?]", "teacher[last_name]"
      assert_select "textarea#teacher_email[name=?]", "teacher[email]"
      assert_select "textarea#teacher_phone[name=?]", "teacher[phone]"
    end
  end
end

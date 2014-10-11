require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone"
      ),
      stub_model(Student,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end

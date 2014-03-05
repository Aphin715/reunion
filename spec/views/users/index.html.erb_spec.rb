require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :status => "Status",
        :location => "Location",
        :email => "Email",
        :personal_website => "Personal Website",
        :buisness_website => "Buisness Website",
        :spouse_or_partner => "Spouse Or Partner",
        :children => "Children",
        :employer => "Employer",
        :facebook => "Facebook",
        :bio => "MyText",
        :photo => "Photo"
      ),
      stub_model(User,
        :status => "Status",
        :location => "Location",
        :email => "Email",
        :personal_website => "Personal Website",
        :buisness_website => "Buisness Website",
        :spouse_or_partner => "Spouse Or Partner",
        :children => "Children",
        :employer => "Employer",
        :facebook => "Facebook",
        :bio => "MyText",
        :photo => "Photo"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Personal Website".to_s, :count => 2
    assert_select "tr>td", :text => "Buisness Website".to_s, :count => 2
    assert_select "tr>td", :text => "Spouse Or Partner".to_s, :count => 2
    assert_select "tr>td", :text => "Children".to_s, :count => 2
    assert_select "tr>td", :text => "Employer".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end

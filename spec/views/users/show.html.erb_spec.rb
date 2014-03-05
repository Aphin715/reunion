require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    rendered.should match(/Location/)
    rendered.should match(/Email/)
    rendered.should match(/Personal Website/)
    rendered.should match(/Buisness Website/)
    rendered.should match(/Spouse Or Partner/)
    rendered.should match(/Children/)
    rendered.should match(/Employer/)
    rendered.should match(/Facebook/)
    rendered.should match(/MyText/)
    rendered.should match(/Photo/)
  end
end

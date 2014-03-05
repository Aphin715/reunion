require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :status => "MyString",
      :location => "MyString",
      :email => "MyString",
      :personal_website => "MyString",
      :buisness_website => "MyString",
      :spouse_or_partner => "MyString",
      :children => "MyString",
      :employer => "MyString",
      :facebook => "MyString",
      :bio => "MyText",
      :photo => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_status[name=?]", "user[status]"
      assert_select "input#user_location[name=?]", "user[location]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_personal_website[name=?]", "user[personal_website]"
      assert_select "input#user_buisness_website[name=?]", "user[buisness_website]"
      assert_select "input#user_spouse_or_partner[name=?]", "user[spouse_or_partner]"
      assert_select "input#user_children[name=?]", "user[children]"
      assert_select "input#user_employer[name=?]", "user[employer]"
      assert_select "input#user_facebook[name=?]", "user[facebook]"
      assert_select "textarea#user_bio[name=?]", "user[bio]"
      assert_select "input#user_photo[name=?]", "user[photo]"
    end
  end
end

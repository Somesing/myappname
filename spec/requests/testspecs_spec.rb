require 'spec_helper'

describe "Testspecs" do
    it "requires a longer name" do
      visit users_path
	  click_link "Create New User"
	  fill_in "Name", with: "A"
	  fill_in "Clearance", with: "Administrator"

	  click_button "Create User"

	  error_message = "Must have at least %{count} words"
	  page.should have_content(error_message)
    end
end



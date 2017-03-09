require 'rails_helper'

feature "Account Creation"  do
	 scenario "allow acess to create account" do
	 	sign_up 	 
	 	expect(page).to have_content 'Hello!'
 	 end
end
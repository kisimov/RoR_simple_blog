require 'rails_helper'

feature "Contact Creation"  do
	 scenario "allow acess to contact page" do
	 	visit '/contacts'
	 	expect(page).to have_content 'Contact Us!'
	 end
end
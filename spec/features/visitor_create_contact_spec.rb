require 'rails_helper'

feature "Contact Creation"  do
	 scenario "allow acess to contact page" do
	 	visit '/contacts'
	 	expect(page).to have_content I18n.t('contacts.contact_us')
 	 end

		scenario "allows a guest to create contact" do
			visit '/contacts'
			fill_in :contact_email, :with => 'aa@example.com'
			fill_in :contact_message, :with => 'Blabla'
			click_button 'Send Message'
			expect(page).to have_content 'Thanks!'
		end
end
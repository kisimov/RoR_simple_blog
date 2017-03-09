	def sign_up
 		visit new_user_registration_path

	 	fill_in :'user[email]', :with => 'aa222@test.com'
	 	fill_in :'user[username]', :with => 'mike'
	 	fill_in :'user[password]', :with => '123456'
	 	fill_in :'user[password_confirmation]', :with => '123456'

	 	click_button 'Sign up'
	 end
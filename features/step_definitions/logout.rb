Given /^I am not authenticated$/ do
  page.driver.submit :delete, "/logout", {}
end

Given /^I am a new, authenticated user$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  @employee = Employee.create(:email => email, :password => password, :password_confirmation => password)

  visit '/login'
  element_email = page.find("email")
  element_password = page.find("password")
  element_email.set(@employee[:email])
  element_password.set(@employee[:password])
  #fill_in "email_field", :with => email
  #fill_in "password_field", :with => password
  click_button "Sign in"
end
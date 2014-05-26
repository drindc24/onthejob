Given /^I am not authenticated$/ do
  page.driver.submit :delete, "/logout", {}
end

Given /^I am a new, authenticated user$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  @employee = Employee.create(:email => email, :password => password, :password_confirmation => password, :first_name => "Katrina", :middle_name => "Suarez", :last_name => "dela Cruz", :address => "Mandaluyong City", :civil_status => "Married", :date_of_birth => Date.today)

  driver = Selenium::WebDriver.for :firefox
  driver.navigate.to "http://localhost:3000"
  element_email = driver.find_element(:id =>'employee_email')
  element_password = driver.find_element(:id =>'employee_password')
  element_email.send_keys(@employee.email)
  element_password.send_keys(@employee.password)
  fill_in element_email, :with => "adelacruz0930@gmail.com"
  fill_in element_password, :with => "password"
  element_submit = driver.find_element(:name => "commit")
  element_submit.submit
end

And(/^I go to home page$/) do

end
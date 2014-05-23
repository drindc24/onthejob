FactoryGirl.define do
  factory :employee do |n|
    first_name "Athena Kassandra"
    middle_name "Suarez"
    last_name "dela Cruz"
    email "jacksontwain@gmail.com"
    password "aldrinandkatrinaforever"
    date_of_birth Date.today
    gender "F"
    level 5
    emergency_contact "Katrina dela Cruz"
    civil_status "S"
    address "Aldrin and Kat's house"
  end
end
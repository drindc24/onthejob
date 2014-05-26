FactoryGirl.define do
  factory :employee do |n|
    names = ["Athena Kassandra", "Andres Keith", "Andrea Kristen"]

    sequence(:first_name){|n| "#{names.sample} #{n}"}
    middle_name "Suarez"
    last_name "dela Cruz"
    sequence(:email) { |n| "jacksontwain#{n}@gmail.com"}
    password "aldrinandkatrinaforever"
    date_of_birth Date.today
    gender "F"
    level 5
    emergency_contact "Katrina dela Cruz"
    civil_status "S"
    address "Aldrin and Kat's house"
  end

  factory :company do |n|
    sequence(:full_name) {|n| "Katdrina company #{n}"}
    business_address "Sample Address"
    date_founded Date.today
    business_phone "123-4567"
  end

  factory :leave_type do |n|
    name "Sample Credit"
    description "Sample Credit"
  end

  factory :leave_credit do |n|
    association :employee
    association :leave_type
    count 10
  end
end
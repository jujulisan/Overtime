FactoryGirl.define do

	sequence :email do |n|
		"test#{n}@example.com"
	end

  factory :user, class: "User" do
    first_name "test"
    last_name "test"
    email {generate :email}
    password "123456"
    password_confirmation "123456"
    phone '5555555555'
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email {generate :email}
    password '123456'
    password_confirmation '123456'
    phone '5555555555'
  end

  factory :non_authorized_user, class: "User" do
    first_name "non"
    last_name "authorized"
    email {generate :email}
    password "123456"
    password_confirmation "123456"
    phone '5555555555'
  end

end

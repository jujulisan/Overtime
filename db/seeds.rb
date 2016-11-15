@user = User.create(email: "test2@test.com", password: "123456", password_confirmation: "123456", first_name: "test", last_name: "test")

puts "User created"
100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been create"

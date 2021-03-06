@user = User.create(email: "test@test.com", 
                    password: "123456", 
                    password_confirmation: "123456", 
                    first_name: "test", 
                    last_name: "test",
                    phone: "552140422300")
puts "User created"

AdminUser.create(email: "admin@test.com", password: "123456", password_confirmation: "123456", first_name: "admin", last_name: "admin")
puts "AdminUser created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end
puts "100 Posts have been create"

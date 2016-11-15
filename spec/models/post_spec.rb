require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
     before do
      @user = User.create(email: "test2@test.com", password: "123456", password_confirmation: "123456", first_name: "test", last_name: "test")
      login_as(@user, scope: :user)
    end
  	before do
  		@post = Post.create(date: Date.today, rationale: "Anything", user_id: @user.id)
  	end

  	it "Can be created" do
  		expect(@post).to be_valid
  	end

		it 'cannot be created without a date and rationale' do
			@post.date = nil
			@post.rationale = nil
			expect(@post).to_not be_valid
		end
  end
end

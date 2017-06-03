namespace :notification do
  desc "Sends sms notification to employees asking them to log if they have overtime or not"
  task sms: :environment do
    # 1. Schedule to run at Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip AdminUsers
    # 4. Send a link that has instructions ans a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    
    # No spaces or dashes
    # Exactly 10 characters
    # All characters have to be a number
  end

end

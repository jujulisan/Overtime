namespace :notification do
  desc "Sends sms notification to employees asking them to log if they have overtime or not"
  task sms: :environment do
    puts "I'm in a rake task!"
  end

end
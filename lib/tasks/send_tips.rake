namespace :cron do
  task :send_tips => :environment do
    Tip.order(:when).each do |tip|
      puts "tip is #{tip.inspect}"
      Dakia.new(TipDecider.new(tip.when).moms.collect(&:phone).join("<"), tip.what).send_message
    end
  end
end
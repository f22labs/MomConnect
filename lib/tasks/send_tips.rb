namespace :cron do
  task :send_tips => :environment do
    Tip.order(:when).each do |tip|
      Dakia.new(TipDecider.new(tip.when).moms.collect(&:phone_number).join("<"), tip.what).send_message
    end
  end
end
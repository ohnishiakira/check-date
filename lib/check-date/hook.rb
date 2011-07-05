puts "check-date/hook.rb called."

Gem.pre_install do |installer|
  puts "Way to go for installing #{installer.gem}"
end


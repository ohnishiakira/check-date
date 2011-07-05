Gem.pre_install do |installer|
  today = Time.now
  year_sec = 365 * 24 * 60 * 60

  if (today - installer.spec.date) / year_sec > 1 then
    if !Gem::ConsoleUI.new.ask_yes_no("This gem was updated more than 1 years ago. (last update: #{installer.spec.date})\nInstall this gem?", true) then
      abort
    end
  end
end


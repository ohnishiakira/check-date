Gem.pre_install do |installer|
  today = Time.now
  update = Time.utc(installer.spec.date)
  year_sec = 365 * 24 * 60 * 60

  if (today - update) / year_esc > 1 then
    if !Gem::ConsoleUI.new.ask_yes_no("This gem was updated more than 1 years ago.\nInstall this gem?", true) then
      abort
    end
  end
end


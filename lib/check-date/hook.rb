Gem.pre_install do |installer|
  today = Date.today

  if (today - installer.spec.date).to_f > 365  then
    if !Gem::ConsoleUI.new.ask_yes_no("This gem was updated more than 1 years ago. (last update: #{installer.spec.date})\nInstall this gem?", true) then
      abort
    end
  end
end


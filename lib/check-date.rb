require "check-date/version"

module CheckDate
  def self.check_date(installer)
    if (Date.today - last_update(installer.spec.date)).to_f > 365 then
      ask_install(installer.spec.date)
    end
  end

  def self.last_update(date)
    date.class == Time ? date.to_date : date
  end

  def self.ask_install(date)
    unless Gem::ConsoleUI.new.ask_yes_no(
      "This gem was updated more than 1 years ago. (last update: #{date})\n" \
      "Install this gem?",
       true)
    then
      abort
    end
  end
end

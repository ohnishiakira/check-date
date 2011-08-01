require "check-date"

Gem.pre_install do |installer|
  CheckDate.check_date installer
end

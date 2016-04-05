class Do < ActiveRecord::Base
    has_one :test
    has_one :attempt
end
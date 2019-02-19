class TimeRecord < ApplicationRecord
  enum clock_type: [ :in, :out ]
end

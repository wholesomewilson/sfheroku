class Lead < ApplicationRecord
  enum status: [:open_not_contacted, :working_contacted, :closed_converted, :closed_not_converted]
end

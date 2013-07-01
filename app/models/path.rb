class Path < ActiveRecord::Base
  validates :state, inclusion: { in: ['open', 'closed', 'hidden' ], message: "eek!" }
end

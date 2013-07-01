class Path < ActiveRecord::Base
  has_one :start_node, class_name: 'Node', foreign_key: 'start_node_id'
  has_one :end_node, class_name: 'Node', foreign_key: 'end_node_id'
  validates :state, inclusion: { in: ['open', 'closed', 'hidden' ], message: "eek!" }
  attr_accessor :start_node, :end_node
end

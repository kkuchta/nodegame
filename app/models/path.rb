class Path < ActiveRecord::Base
  belongs_to :start_node, class_name: 'Node', foreign_key: 'start_node_id'
  belongs_to :end_node, class_name: 'Node', foreign_key: 'end_node_id'
  validates :state, inclusion: { in: ['open', 'closed', 'hidden' ], message: "eek!" }
  #attr_accessor :start_node, :end_node
end

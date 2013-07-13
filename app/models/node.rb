class Node < ActiveRecord::Base
  def _initialize(attributes={})
    super

    puts "setting max_exits"
    # The most number of exits you can generate for this node.
    self.max_exits = rand(3) + 1
  end
  def exits
    logger.info "self.id=" + self.id.to_s
    Path.where( start_node_id: self.id )
  end
end

class Node < ActiveRecord::Base
  def exits
    logger.info "self.id=" + self.id.to_s
    Path.where( start_node_id: self.id )
  end
end

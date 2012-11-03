accessing
register: aWSGateway zmqGateway: aZMQGateway
        
	self wsGateway: aWSGateway.
      self zmqGateway: aZMQGateway.

       self wsGateway register: self identity proxy: self.
       self zmqGateway register: self identity proxy: self.


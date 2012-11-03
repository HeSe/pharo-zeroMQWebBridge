accessing
sendToZMQ: anIdentity message: aMessage
      
	[ (self proxies at: anIdentity) sendToZMQ: aMessage ] 
			on: Error do: [ :e | self deregister: anIdentity]
           
accessing
sendToWeb: anIdentity message: aMessage
        
	 [ (self proxies at: anIdentity ) sendToWeb: aMessage]
		on: Error do: [ self deregister: anIdentity]
	
      
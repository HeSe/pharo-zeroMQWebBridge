as yet unclassified
receiveFromZMQHandleBlock

	^[	| msg |
		
		 msg := self zmqSocket receive.
        
		[ self handleRequest: msg ]on: Error do:[:e | nil ]
		
		]
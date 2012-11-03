as yet unclassified
sendToZMQHandleBlock

	^[	| msg mIdentity |
		
		 msg := self queue next.
        
		[ self sendToZMQ: (msg key)  message: (msg value) ] on: Error do:[:e | e pass ]
		
		]

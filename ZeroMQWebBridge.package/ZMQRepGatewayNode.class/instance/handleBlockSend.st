as yet unclassified
handleBlockSend

	^[:socket | | msg  addrData|
		
		[ msg := self queue next.
		 "  obj := simplejson.loads(msg)
                address_data := self.addresses[msg[0]]"
              addrData := msg.
		  self sendMultiPart: msg ] on: Error do:[:e | e pass ] 
	   
	]
		   

             
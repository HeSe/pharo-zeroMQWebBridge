as yet unclassified
handleBlock

	^[ | msg |
		
            msg := self zmqSocket receive.
            
            self proxies keysAndValuesDo:[:eachId :eachP |
                    
			(eachP msgfilter includes: msg )
				ifTrue:[  
					[self sendToWeb: eachP message:  msg] on: Error do:[:e | nil ] ]
		    ]
		]
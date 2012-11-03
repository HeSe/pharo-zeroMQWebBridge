accessing
run

	| running |        

	running := true

	running whileTrue: [ |  msg |
            msg := self webGateway receive.
            
		msg isNil
        		ifTrue:[self close.
                			running := false]
			ifFalse:[ self handleRequest: msg ] 
			]

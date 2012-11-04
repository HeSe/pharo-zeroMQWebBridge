accessing
workerBlock

	^ [ : node |
		| toMongrel fromMongrel  |
		
		fromMongrel := node fromMongrelSocket.
		toMongrel := node toMongrelSocket.
		
			[ node running ] whileTrue:[ 
				| mMongrelRequest  |
					
				[
					| mMessage mBlock | 
					
					mMessage := fromMongrel receive. 
				
					mMongrelRequest := node formatAsRequest: mMessage.				
					mBlock := node handlerBlockForRequest: mMongrelRequest.
				      mBlock value: mMongrelRequest value: node value: toMongrel
				]
				on: Error do: [ :e |  nil ]
				]
			].
	
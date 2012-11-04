accessing
workerBlock

	^ [ : node |
		| toMongrel fromMongrel  |
		
		fromMongrel := node fromMongrelSocket.
		toMongrel := node toMongrelSocket.
		
		[fromMongrel withResultDo: [:msg | |mBlock mMongrelRequest |		
					Transcript cr; show: 'got result'.		
					mMongrelRequest := node formatAsRequest: msg.				
					mBlock := node handlerBlockForRequest: mMongrelRequest.
				      mBlock value: mMongrelRequest value: node value: toMongrel
				]]
				on: Error do: [ :e |  Transcript cr; show: e asString .nil ]
				]
		
	
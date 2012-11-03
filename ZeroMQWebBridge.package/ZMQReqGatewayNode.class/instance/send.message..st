as yet unclassified
send: anIdentity message: aMultiPartMsg
					
	self queue nextPut: (anIdentity ->  aMultiPartMsg)
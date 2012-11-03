accessing
addNewNode: aSocketType address: aConnString 

	| mNode |
	
	mNode := self createZmqNodeForType: aSocketType address: aConnString.
	
	^self zmqNodes at: ( aSocketType -> aConnString ) put: mNode
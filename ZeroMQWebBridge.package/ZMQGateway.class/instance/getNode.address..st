accessing
getNode: aSocketType address: aConnString

	^self zmqNodes at: (aSocketType  -> aConnString)
			ifAbsent:[ self createNewNode: aSocketType address: aConnString ]
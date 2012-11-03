accessing
createNewNode: aSocketType address: aConnString 

	| mGatewayNode |

	aSocketType = 'REQ'
                 ifTrue:[ mGatewayNode := ZMQReqGatewayNode new: aConnString context: self zmqContext].

       aSocketType = 'REP'
                 ifTrue:[ mGatewayNode := ZMQRepGatewayNode new: aConnString context: self zmqContext].

       mGatewayNode isNil
                ifTrue:[ mGatewayNode := ZMQSubGatewayNode new: aConnString context: self zmqContext].

     self zmqNodes at: (aSocketType -> aConnString) put:  mGatewayNode.

	mGatewayNode run.
	
^mGatewayNode
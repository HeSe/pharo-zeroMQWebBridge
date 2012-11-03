accessing
initialize

	zmqSockets := Dictionary new.
	running := true.
	identifier := UUID new asString.
	self zmqSockets at: 'fromMongrel' put: ZmqApi context zmqPullSocket.
 	self zmqSockets at: 'toMongrel' put: ZmqApi context zmqPublisherSocket.
accessing
start

	[ 
	  ZmqApi setSocketOption:  ZmqApiConstants zmqIdentity forSocket: (self zmqSockets at: 'toMongrel' ) socketPointer to: self identifier.
		
	"ZmqApi setSocketOption:  ZmqApiConstants zmqLinger forSocket: (self zmqSockets at: 'toMongrel' ) socketPointer to: '0'.	"
		
	  (self zmqSockets at: 'fromMongrel' ) connect: 'ipc://33.33.33.10:9995'.
	  (self zmqSockets at: 'toMongrel' ) connect: 'ipc://33.33.33.10:9994'.
	
	
	  self workerBlock value: self] forkAt: Processor userBackgroundPriority  

	
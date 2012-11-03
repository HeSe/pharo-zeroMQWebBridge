accessing
start

	[ 
	  ZmqApi setSocketOption:  ZmqApiConstants zmqIdentity forSocket: (self zmqSockets at: 'toMongrel' ) socketPointer to: self identifier.
		
	"ZmqApi setSocketOption:  ZmqApiConstants zmqLinger forSocket: (self zmqSockets at: 'toMongrel' ) socketPointer to: '0'.	"
		
	  (self zmqSockets at: 'fromMongrel' ) connect: 'tcp://192.168.0.180:9999'.
	  (self zmqSockets at: 'toMongrel' ) connect: 'tcp://192.168.0.180:9998'.
	
	
	  self workerBlock value: self] forkAt: Processor userBackgroundPriority  

	
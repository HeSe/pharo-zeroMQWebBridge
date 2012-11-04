accessing
start

	[ 
		
	"ZmqApi setSocketOption:  ZmqApiConstants zmqLinger forSocket: (self zmqSockets at: 'toMongrel' ) socketPointer to: '0'.	"
		
	  (self zmqSockets at: 'fromMongrel' ) connect: 'tcp://127.0.0.1:9995'.
	  (self zmqSockets at: 'toMongrel' ) connect: 'tcp://127.0.0.1:9994'.
	
	
	  self workerBlock value: self] forkAt: Processor userBackgroundPriority  

	
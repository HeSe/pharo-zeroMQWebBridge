accessing
shutdown

	self zmqNodes do: [:each | each close].
	self zmqSocket close .
	
      self zmqNodes: Dictionary new.
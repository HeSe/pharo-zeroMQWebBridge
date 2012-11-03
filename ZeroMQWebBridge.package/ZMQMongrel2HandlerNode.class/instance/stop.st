accessing
stop

	[self running: false.
	
	ZmqContext new terminate.] fork
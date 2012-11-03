as yet unclassified
handleRequest: aMessage

	| mMessage mMessageType mIdentity mContent |
	
	"mMessage = simplejson.loads(aMessage)"
        
        mMessageType = aMessage at: 'msg_type'.
        mIdentity = aMessage at: 'identity'.
        mContent = aMessage at: 'content'.
        
       mMessageType = 'connect'
            ifTrue:[ 
			self zmqAllowed
				ifTrue:[ self connect: mIdentity  message: mContent.
                				"mContent := simplejson.dumps({'status' : 'success'})"]
                	      ifFalse:[ "mContent := simplejson.dumps({'status' : 'error'})"].
                  
			self sendToWeb: mIdentity message: mContent "msg_type='connection_reply')"
			]
        ifFalse:[ self sendToZMQ: mIdentity message: mContent ]
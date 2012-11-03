as yet unclassified
connect: anIdentity message: aContent

	| mProxy mContent mConnString mSocketType mGateway |
	
	"mContent .= simplejson.loads(content)."
        mConnString := aContent at: 'zmq_conn_string'.
	  mSocketType := aContent at: 'socket_type'.
	
       mSocketType = 'REQ'
		ifTrue:[ mProxy := ZMQReqSocketProxy new: anIdentity].
		
        mSocketType = 'REP'
           ifTrue:[ mProxy := ZMQRepSocketProxy new: anIdentity].

        mProxy isNil
            ifTrue:[mProxy := ZMQSubSocketProxy new: anIdentity messageFilter: (mContent at: 'msgfilter')].

        mGateway := self zmqGateway getNode: mSocketType address: mConnString.

        mProxy register: mGateway
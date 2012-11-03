accessing
sendToWeb: anIdentity message: aMessage

	| mMessageDict |
        mMessageDict := Dictionary new 
							at: 'identity' put: anIdentity;
							at: 'content' put: aMessage; 
							yourself.
							
        self webGateway sendToWeb: mMessageDict asJason
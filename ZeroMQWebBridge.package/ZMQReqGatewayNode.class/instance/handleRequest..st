as yet unclassified
handleRequest: aMessage

	| mIdentity mMessage |
	
        mIdentity := ( aMessage at: 1 ).
        mMessage := ( aMessage at: 2 ).
        self sendToWeb: mIdentity message: mMessage
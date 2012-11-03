as yet unclassified
sendMultiPart: aMultiPartMsg

        self zmqSocket send: ( self identity, ' ',  aMultiPartMsg )
					
	
as yet unclassified
handleBlockReceive

	^[ | msg  addrData|
		[
             " target_ident = msg[-1]
                address_idx = msg.index('')
                address_data = msg[:address_idx]
                hashval = hashlib.sha1(str(address_data)).hexdigest()
                self.addresses[hashval] = address_data
                newmsg = [hashval] + [str(x) for x in \
                                      msg[address_idx:-1]]
                msg = simplejson.dumps(newmsg)
                self.send_proxy(target_ident, msg"


           ] on: Error do:[:e | e pass ] ]
		   

             
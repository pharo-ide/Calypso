execution
fetchResultAs: anEnvironmentContent fromMethods: methods
	| senders |
	senders := methods select: [ :each | self selectsMethod: each ].
	
	anEnvironmentContent buildFromMethods: senders
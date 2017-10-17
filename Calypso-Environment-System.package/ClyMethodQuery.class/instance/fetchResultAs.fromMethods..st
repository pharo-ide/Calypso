execution
fetchResultAs: aQueryResult fromMethods: methods
	| senders |
	senders := methods select: [ :each | self selectsMethod: each ].
	
	aQueryResult buildFromMethods: senders
execution
fetchResultAs: aQueryResult fromMethods: methods
	| filteredMethods |
	filteredMethods := methods select: [ :each | self selectsMethod: each ].
	
	aQueryResult buildFromMethods: filteredMethods
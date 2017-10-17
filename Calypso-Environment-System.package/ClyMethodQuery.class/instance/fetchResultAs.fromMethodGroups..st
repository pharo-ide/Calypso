execution
fetchResultAs: aQueryResult fromMethodGroups: methodGroups
	| allMethods |
	allMethods := methodGroups flatCollect: [ :eachGroup | eachGroup methods] as: IdentitySet.
	
	self fetchResultAs: aQueryResult fromMethods: allMethods
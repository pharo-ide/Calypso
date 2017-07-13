building
buildFromMethodGroups: methodGroups
	
	| allMethods |
	allMethods := methodGroups flatCollect: [ :eachGroup | eachGroup methods] as: IdentitySet.
	self buildFromMethods:  allMethods
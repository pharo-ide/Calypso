testing
canBeExecutedInContext: aToolContext
	self flag: #todo. "Check for IceLog is temporal, to let time to update iceberg on Pharo 7.0a"
	^ aToolContext isMethodSelected 
		and: [ (Smalltalk globals includesKey: #IceLog)
		and: [ (IceRepository registeredRepositoryIncludingPackage: aToolContext lastSelectedMethod package) notNil ] ]
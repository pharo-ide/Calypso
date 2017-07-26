building
buildFromClasses: classes

	| allMethods |
	allMethods := classes flatCollect: [ :each | each localMethods] as: IdentitySet.

	self buildFromMethods: allMethods
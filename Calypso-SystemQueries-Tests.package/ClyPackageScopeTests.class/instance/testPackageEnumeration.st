tests
testPackageEnumeration
	scope := ClyPackageScope ofAll: {Array package. Object package}.
	
	scope packagesDo: [ :each | result add: each ].
	
	self assert: result asArray equals: {Array package. Object package}
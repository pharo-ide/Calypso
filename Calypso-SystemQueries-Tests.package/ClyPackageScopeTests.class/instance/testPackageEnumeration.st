tests
testPackageEnumeration

	scope := ClyPackageScope of: {Array package.  Object package }.
	
	scope packagesDo: [ :each | result add: each].
	
	self assert: result asArray equals: {Array package. Object package}
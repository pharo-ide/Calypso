tests
testPackageEnumeration

	scope := ClyPackageExtensionScope of: { Object package. Array package }.
	
	scope packagesDo: [ :each | result add: each].
	
	self assert: result asArray equals: scope basisObjects asArray
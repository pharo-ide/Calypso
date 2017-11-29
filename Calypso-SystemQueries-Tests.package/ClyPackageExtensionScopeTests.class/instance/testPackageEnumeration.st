tests
testPackageEnumeration

	scope := ClyPackageExtensionScope of: { Array package.  Object package }.
	
	scope packagesDo: [ :each | result add: each].
	
	self assert: result asArray equals: { Array package.  Object package }
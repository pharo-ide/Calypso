tests
testClassEnumeration

	| expected package |
	package := ClyClass7WithTag1FromP5 package.
	scope := ClyClassGroupScope of: { ClyTaggedClassGroup in: package tag: #Tag1}.
	
	scope classesDo: [ :each | result add: each].
	
	expected := package classesTaggedWith: #Tag1.
	self assert: result sorted asArray equals: expected sorted asArray
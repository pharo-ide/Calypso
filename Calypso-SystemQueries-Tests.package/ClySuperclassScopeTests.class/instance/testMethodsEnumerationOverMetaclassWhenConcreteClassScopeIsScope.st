tests
testMethodsEnumerationOverMetaclassWhenConcreteClassScopeIsScope

	| expected |
	scope := ClySuperclassScope of: { ClyClass1FromP1 class } localScope: ClyClassScope.
	
	scope methodsDo: [ :each | result add: each].

	"Now we should see more classes than Object and ProtoObject 
	because ProtoObject class has more superclasses including Object and ProtoObject itself"
	expected := ClyClass1FromP1 class allSuperclasses flatCollect: #localMethods as: IdentitySet..
	self assert: result asIdentitySet equals: expected
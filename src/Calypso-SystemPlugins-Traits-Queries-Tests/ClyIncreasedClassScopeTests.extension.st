Extension { #name : #ClyIncreasedClassScopeTests }

{ #category : #'*Calypso-SystemPlugins-Traits-Queries-Tests' }
ClyIncreasedClassScopeTests >> testMethodsEnumerationOfInheritedTraitsOfTraitWhenOverriddenMethodsAreHidden [
	"#methodFromRoot1 is overridden by ClyTraitChild3"
	scope := ClyIncreasedClassScope of: ClyTraitChild3 withAll: {ClyTraitRoot1}.
	scope hideOverriddenMethods.
	
	scope methodsDo: [ :each | result add: each ].
	
	self deny: (result asIdentitySet includes: ClyTraitRoot1 >> #methodFromRoot1).
	self assert: result notEmpty
]

{ #category : #'*Calypso-SystemPlugins-Traits-Queries-Tests' }
ClyIncreasedClassScopeTests >> testMethodsEnumerationOfInheritedTraitsWhenOverriddenMethodsAreHidden [
	"#methodFromRoot1 is overridden by ClySubclassWithTraitsOfClassWithTraits"
	scope := ClyIncreasedClassScope of: ClySubclassWithTraitsOfClassWithTraits withAll: {ClyTraitRoot1}.
	scope hideOverriddenMethods.
	
	scope methodsDo: [ :each | result add: each ].
	
	self deny: (result asIdentitySet includes: ClyTraitRoot1 >> #methodFromRoot1).
	self assert: result notEmpty
]

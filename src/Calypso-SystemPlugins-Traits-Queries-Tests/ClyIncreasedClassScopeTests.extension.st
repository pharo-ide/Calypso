Extension { #name : #ClyIncreasedClassScopeTests }

{ #category : #'*Calypso-SystemPlugins-Traits-Queries-Tests' }
ClyIncreasedClassScopeTests >> testDoesNotIncludeDuplicatedTraits [
	"#methodFromRoot1 is overridden by ClyTraitChild3"
	| classScope |
	classScope := ClyClassScope of: ClyClassWithTraits.
	scope := classScope increasedByClassesFrom: (classScope asScope: ClyInheritedTraitScope).
	
	scope classesDo: [ :each | result add: each ].
	
	self assert: (result occurrencesOf: ClyTraitRoot1) equals: 1
]

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

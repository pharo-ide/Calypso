Extension { #name : #ClyIncreasedClassScopeTest }

{ #category : #'*Calypso-SystemPlugins-Traits-Queries-Tests' }
ClyIncreasedClassScopeTest >> testDoesNotIncludeDuplicatedTraits [
	"#methodFromRoot1 is overridden by ClyTraitChild3"
	| classScope |
	classScope := ClyClassScope of: ClyClassWithTraits.
	scope := classScope increasedByClassesFrom: (classScope asScope: ClyInheritedTraitScope).
	
	scope classesDo: [ :each | result add: each ].
	
	self assert: (result occurrencesOf: ClyTraitRoot1) equals: 1
]

{ #category : #'*Calypso-SystemPlugins-Traits-Queries-Tests' }
ClyIncreasedClassScopeTest >> testMethodsEnumerationOfInheritedTraitWithSubstractedMethod [
	"#methodFromRoot2 is substract in trait composition of ClyClassWithSubstractingTraitMethod"
	scope := ClyIncreasedClassScope of: ClyClassWithSubstractingTraitMethod withAll: {ClyTraitRoot2}.
	scope hideOverriddenMethods.
	
	scope methodsDo: [ :each | result add: each ].
	
	self deny: (result asIdentitySet includes: 	ClyTraitRoot2 >> #methodFromRoot2)
]

{ #category : #'*Calypso-SystemPlugins-Traits-Queries-Tests' }
ClyIncreasedClassScopeTest >> testMethodsEnumerationOfInheritedTraitsOfTraitWhenOverriddenMethodsAreHidden [
	"#methodFromRoot1 is overridden by ClyTraitChild3"
	scope := ClyIncreasedClassScope of: ClyTraitChild3 withAll: {ClyTraitRoot1}.
	scope hideOverriddenMethods.
	
	scope methodsDo: [ :each | result add: each ].
	
	self deny: (result asIdentitySet includes: ClyTraitRoot1 >> #methodFromRoot1).
	self assert: result notEmpty
]

{ #category : #'*Calypso-SystemPlugins-Traits-Queries-Tests' }
ClyIncreasedClassScopeTest >> testMethodsEnumerationOfInheritedTraitsWhenOverriddenMethodsAreHidden [
	"#methodFromRoot1 and #methodFromTraitChild2 are overridden 
	by ClySubclassWithTraitsOfClassWithTraits"
	scope := ClyIncreasedClassScope of: ClySubclassWithTraitsOfClassWithTraits withAll: {ClyTraitRoot1}.
	scope hideOverriddenMethods.
	
	scope methodsDo: [ :each | result add: each ].
	
	self deny: (result asIdentitySet includes: ClyTraitRoot1 >> #methodFromRoot1).
	self assert: result notEmpty
]

{ #category : #'*Calypso-SystemPlugins-Traits-Queries-Tests' }
ClyIncreasedClassScopeTest >> testMethodsEnumerationOfInheritedTraitsWhenOverriddenMethodsAreHidden2 [
	"#methodFromRoot1 and #methodFromTraitChild2 are overridden 
	by ClySubclassWithTraitsOfClassWithTraits"
	scope := ClyIncreasedClassScope of: ClySubclassWithTraitsOfClassWithTraits withAll: {ClyTraitChild2}.
	scope hideOverriddenMethods.
	
	scope methodsDo: [ :each | result add: each ].
	
	self deny: (result asIdentitySet includes: 	ClyTraitChild2 >> #methodFromTraitChild2).
	self assert: result notEmpty
]

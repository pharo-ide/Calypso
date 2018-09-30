Class {
	#name : #ClyIncreasedClassScopeTests,
	#superclass : #ClyClassHierarchyScopeTestCase,
	#category : #'Calypso-SystemQueries-Tests-Scopes'
}

{ #category : #running }
ClyIncreasedClassScopeTests >> scopeClass [
	
	^ClyIncreasedClassScope 
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testClassEnumeration [

	scope := ClyIncreasedClassScope of: ClyClass1FromP1 withAll: {Array. Object}.
	
	scope classesDo: [ :each | result add: each ].
	
	self assert: result asArray equals: {Array. ClyClass1FromP1. Object}
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testClassEnumerationOverInstanceSideBasisWhenBothMetaLevelsAreLocalScope [

	scope := ClyIncreasedClassScope of: ClyClass1FromP1 withAll: { Object } localScope: ClyBothMetaLevelClassScope.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result asSet equals: {ClyClass1FromP1. ClyClass1FromP1 class. 
		Object. Object class } asSet
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testClassEnumerationOverMetaclassBasisWhenInstanceSideIsLocalScope [

	scope := ClyIncreasedClassScope of: ClyClass1FromP1 class withAll: { Object class } localScope: ClyInstanceSideScope.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result asArray equals: { ClyClass1FromP1. Object } 
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testClassSideMethodsEnumerationWhenOverriddenMethodsAreHidden [
	| expected |
	scope := ClyIncreasedClassScope of: ClySubclassN1OfClass1FromP1 withAll: {ClyClass1FromP1}.
	scope localScopeClass: ClyClassSideScope.
	scope hideOverriddenMethods.
	
	scope methodsDo: [ :each | result add: each ].
	
	"overriddenClassSideMethod is overridden in ClySubclassN1OfClass1FromP1"
	expected := ClyClass1FromP1 class localMethods asIdentitySet.
	expected remove: ClyClass1FromP1 class >> #overriddenClassSideMethod.
	expected addAll: ClySubclassN1OfClass1FromP1 class localMethods.
	self assert: result asIdentitySet equals: expected
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testComparisonWithSimilarScopeButWithDifferentExtraClasses [

	| scope2 |
	scope := self createSampleScope.
	scope extraClasses: { Array }.
	scope2 := self createSampleScope.
	scope2 extraClasses: { Object }.
	
	self deny: scope = scope2
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testComparisonWithSimilarScopeButWithDifferentOverriddenMethodVisibility [

	| scope2 |
	scope := self createSampleScope.
	scope showOverriddenMethods.
	scope2 := self createSampleScope.
	scope2 hideOverriddenMethods.
	
	self deny: scope = scope2
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testConvertingToIncreasedScopeByExtraClassScope [
	| convertedScope extraClassScope |
	scope := self singleScopeSample.
	scope extraClasses: { Point. Object }.
	
	extraClassScope := ClySuperclassScope of: self class in: environment.
	convertedScope := scope increasedByClassesFrom: extraClassScope.
	
	self assert: convertedScope class equals: scope class.
	self assert: convertedScope basisObjects equals: scope basisObjects.
	self 
		assert: convertedScope extraClasses asSet 
		equals: (scope extraClasses, self class allSuperclasses) asSet.
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testConvertingToReducedScopeByEmptyExtraClassScope [
	| convertedScope extraClassScope |
	scope := self multipleScopeSample.
	scope extraClasses: { Point }.
	extraClassScope := ClyClassScope ofAll: scope extraClasses.
	
	convertedScope := scope reducedByClassesFrom: extraClassScope.
	
	self assert: convertedScope class equals: scope localScopeClass.
	self assert: convertedScope basisObjects equals: scope basisObjects
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testConvertingToReducedScopeByExtraClassScope [
	| convertedScope extraClassScope increasedScope |
	scope := self multipleScopeSample.
	scope extraClasses: { Point }.
	extraClassScope := ClySuperclassScope of: self class in: environment.
	
	increasedScope := scope increasedByClassesFrom: extraClassScope.
	convertedScope := increasedScope reducedByClassesFrom: extraClassScope.
	
	self assert: convertedScope class equals: scope class.
	self assert: convertedScope basisObjects equals: scope basisObjects.
	self 
		assert: convertedScope extraClasses asSet 
		equals: scope extraClasses asSet
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testIncludesClass [

	scope := ClyIncreasedClassScope of: ClyClass1FromP1 withAll: {Array. Object}.
	
	self assert: (scope includesClass: ClyClass1FromP1).
	self assert: (scope includesClass: Object).
	self deny: (scope includesClass: ClySubclassN1OfClass1FromP1)
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testMethodsEnumeration [
	| expected |
	scope := ClyIncreasedClassScope of: ClyClass1FromP1 withAll: {Object}.
	
	scope methodsDo: [ :each | result add: each ].
	
	expected := {ClyClass1FromP1. Object} flatCollect: #localMethods as: IdentitySet.
	self assert: result asIdentitySet equals: expected
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testMethodsEnumerationOverInstanceSideWhenBothMetaLevelsAreLocalScope [

	| expected |
	scope := ClyIncreasedClassScope of: ClyClass1FromP1 withAll: { Object } localScope: ClyBothMetaLevelClassScope.
	
	scope methodsDo: [ :each | result add: each].

	expected := {ClyClass1FromP1. ClyClass1FromP1 class. Object. Object class  }
		flatCollect: #localMethods as: IdentitySet..
	self assert: result asIdentitySet equals: expected
]

{ #category : #tests }
ClyIncreasedClassScopeTests >> testMethodsEnumerationWhenOverriddenMethodsAreHidden [
	| expected |
	scope := ClyIncreasedClassScope of: ClySubclassN1OfClass1FromP1 withAll: {ClyClass1FromP1}.
	scope hideOverriddenMethods.
	
	scope methodsDo: [ :each | result add: each ].
	
	"tag1Method1 is overridden in ClySubclassN1OfClass1FromP1"
	expected := ClyClass1FromP1 localMethods asIdentitySet.
	expected remove: ClyClass1FromP1 >> #tag1Method1.
	expected addAll: ClySubclassN1OfClass1FromP1 localMethods.
	self assert: result asIdentitySet equals: expected
]

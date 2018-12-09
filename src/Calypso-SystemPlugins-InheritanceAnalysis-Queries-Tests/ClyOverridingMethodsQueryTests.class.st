Class {
	#name : #ClyOverridingMethodsQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#category : #'Calypso-SystemPlugins-InheritanceAnalysis-Queries-Tests'
}

{ #category : #running }
ClyOverridingMethodsQueryTests >> createQuery [
	^ClyOverridingMethodsQuery from: ClyClassScope of: ClyClassWhichInheritsAbstractClass in: environment
]

{ #category : #running }
ClyOverridingMethodsQueryTests >> setUpEnvironment [
	super setUpEnvironment.
	
	environment addPlugin: ClyInheritanceAnalysisEnvironmentPlugin new
]

{ #category : #tests }
ClyOverridingMethodsQueryTests >> testCheckIfEmpty [
	query scope: (ClyMethodScope
		of: (ClyClassWhichInheritsAbstractClass >> #abstractMethod1) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWhichInheritsAbstractClass >> #overriddenMethod) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod) in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyOverridingMethodsQueryTests >> testFromThreeMethods [

	self queryFromScope: ClyMethodScope ofAll: {
		ClyClassWhichInheritsAbstractClass >> #abstractMethod1. 
		ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod.
		ClyClassWhichInheritsAbstractClass >> #overriddenMethod}.
	
	self assert: foundSelectors equals: #(abstractMethod1 #overriddenMethod)
]

{ #category : #tests }
ClyOverridingMethodsQueryTests >> testIsAffectedByChangeOfOwnMethodWhichIsNotOverridden [
	
	self assert: (query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod)

]

{ #category : #tests }
ClyOverridingMethodsQueryTests >> testIsAffectedByChangeOfSuperclassMethodWhichIsAlreadyImplemented [
	
	self assert: (query isAffectedByChangedMethod: ClyAbstractClassExample >> #overriddenMethod)

]

{ #category : #tests }
ClyOverridingMethodsQueryTests >> testIsAffectedByChangeOfSuperclassMethodWhichOverridesAnotherSuperclassMethod [
	"this case is important to be affected when override method was removed"
	
	query := ClyOverridingMethodsQuery 
		from: ClyClassScope of: ClyClassWhichInheritsAbstractSubclass in: environment.
		
	self assert: (query isAffectedByChangedMethod: ClyAbstractSubclassExample >> #abstractMethod1)

]

{ #category : #tests }
ClyOverridingMethodsQueryTests >> testNotAffectedByChangeOfOverriddenMethodFromAnotherHierarchyWhenSameMethodExistsHereToo [
	
	self deny: (query isAffectedByChangedMethod: ClyAbstractSubclassExample >> #abstractMethod1)

]

{ #category : #tests }
ClyOverridingMethodsQueryTests >> testNotSelectsNotOverrideMethod [

	self deny: (query selectsMethod: ClyClassWhichInheritsAbstractClass>>#notOverriddenMethod)
]

{ #category : #tests }
ClyOverridingMethodsQueryTests >> testSelectsOverrideMethod [

	self assert: (query selectsMethod: ClyClassWhichInheritsAbstractClass>>#overriddenMethod)
]

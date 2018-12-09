Class {
	#name : #ClyOverriddenMethodsQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#category : #'Calypso-SystemPlugins-InheritanceAnalysis-Queries-Tests'
}

{ #category : #running }
ClyOverriddenMethodsQueryTests >> createQuery [
	^ ClyOverriddenMethodsQuery from: ClyClassScope of: ClyAbstractClassExample in: environment
]

{ #category : #running }
ClyOverriddenMethodsQueryTests >> setUpEnvironment [
	super setUpEnvironment.
	
	environment addPlugin: ClyInheritanceAnalysisEnvironmentPlugin new
]

{ #category : #tests }
ClyOverriddenMethodsQueryTests >> testCheckIfEmpty [
	query scope: (ClyMethodScope 
		of: (ClyAbstractClassExample >> #abstractMethod1)	in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyAbstractClassExample >> #overriddenMethod) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyAbstractClassExample >> #abstractMethod2) in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyOverriddenMethodsQueryTests >> testFromThreeMethods [

	self queryFromScope: ClyMethodScope ofAll: {
		ClyAbstractClassExample >> #abstractMethod1. 
		ClyAbstractClassExample >> #abstractMethod2.
		ClyAbstractClassExample >> #overriddenMethod}.
	
	self assert: foundSelectors equals: #(abstractMethod1 overriddenMethod)
]

{ #category : #tests }
ClyOverriddenMethodsQueryTests >> testIsAffectedByChangeOfOwnMethodWhichIsNotOverridden [
	query := ClyOverriddenMethodsQuery 
		from: ClyClassScope of: ClyClassWhichInheritsAbstractClass in: environment.
	
	self assert: (query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >>#notOverriddenMethod)
]

{ #category : #tests }
ClyOverriddenMethodsQueryTests >> testIsAffectedByChangeOfOwnMethodWhichIsOverridden [
	
	self assert: (query isAffectedByChangedMethod: ClyAbstractClassExample>>#overriddenMethod)
]

{ #category : #tests }
ClyOverriddenMethodsQueryTests >> testIsAffectedByChangeOfSubclassMethodWhichOverridesSuperclass [
	
	self assert: (query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass>>#overriddenMethod)
]

{ #category : #tests }
ClyOverriddenMethodsQueryTests >> testNotAffectedByChangeOfSubclassMethodWhichNotOverridesSuperclass [
	
	self deny: (query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass>>#notOverriddenMethod)
]

{ #category : #tests }
ClyOverriddenMethodsQueryTests >> testNotSelectsNotOverriddenMethod [

	self deny: (query selectsMethod: ClyClassWhichInheritsAbstractClass>>#notOverriddenMethod)
]

{ #category : #tests }
ClyOverriddenMethodsQueryTests >> testSelectsOverriddenMethod [

	self assert: (query selectsMethod: ClyAbstractClassExample>>#overriddenMethod)
]

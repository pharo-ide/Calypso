Class {
	#name : #ClyFlaggingMethodsQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#category : #'Calypso-SystemPlugins-Flags-Queries-Tests'
}

{ #category : #running }
ClyFlaggingMethodsQueryTests >> createQuery [
	^ClyFlaggingMethodsQuery from: ClyClassScope of: Object in: environment
]

{ #category : #tests }
ClyFlaggingMethodsQueryTests >> testCheckIfEmpty [
	query scope: (ClyMethodScope
		of: (ClyClassWithFlags >> #methodWithFlag)
		in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithFlags >> #methodWithoutFlag)
		in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyFlaggingMethodsQueryTests >> testFromTwoMethods [

	self queryFromScope: ClyMethodScope ofAll: {
		ClyClassWithFlags >> #methodWithFlag. 
		ClyClassWithFlags >> #methodWithoutFlag}.
	
	self assert: foundSelectors sorted asArray equals: #(methodWithFlag)
]

{ #category : #tests }
ClyFlaggingMethodsQueryTests >> testNotSelectsMethodWithoutFlag [

	self deny: (query selectsMethod: ClyClassWithFlags >> #methodWithoutFlag)
]

{ #category : #tests }
ClyFlaggingMethodsQueryTests >> testSelectsMethodWithFlag [

	self assert: (query selectsMethod: ClyClassWithFlags >> #methodWithFlag)
]

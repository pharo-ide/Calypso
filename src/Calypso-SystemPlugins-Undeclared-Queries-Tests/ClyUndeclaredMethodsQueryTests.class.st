Class {
	#name : #ClyUndeclaredMethodsQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#category : #'Calypso-SystemPlugins-Undeclared-Queries-Tests'
}

{ #category : #running }
ClyUndeclaredMethodsQueryTests >> createQuery [
	^ ClyUndeclaredMethodsQuery
		from: (ClyClassScope of: ClyClassWithUndeclares in: environment)
]

{ #category : #tests }
ClyUndeclaredMethodsQueryTests >> testCheckIfEmpty [
	query scope: (ClyMethodScope
		of: ClyClassWithUndeclares >> #method1WithUndeclares in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: Object >> #printString in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyUndeclaredMethodsQueryTests >> testFromThreeMethods [

	self queryFromScope: ClyMethodScope ofAll: {
		ClyClassWithUndeclares >> #method1WithUndeclares. 
		ClyClassWithUndeclares >> #method2WithUndeclares.
		Object >> #printString}.
	
	self assert: foundSelectors sorted asArray equals: #(method1WithUndeclares method2WithUndeclares) 
]

{ #category : #tests }
ClyUndeclaredMethodsQueryTests >> testNotSelectsClassSideMethodWhichReturnesFloat [

	self deny: (query selectsMethod: ClyClassWithUndeclares class>>#withFloatReturn)
]

{ #category : #tests }
ClyUndeclaredMethodsQueryTests >> testNotSelectsMethodWhichHasNoUndeclares [
	
	self deny: (query selectsMethod: Object >> #printString)
]

{ #category : #tests }
ClyUndeclaredMethodsQueryTests >> testSelectsMethodWhichUsesUndeclares [
	
	self assert: (query selectsMethod: ClyClassWithUndeclares >> #method1WithUndeclares)
]

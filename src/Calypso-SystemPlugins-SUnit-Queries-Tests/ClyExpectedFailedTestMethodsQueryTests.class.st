Class {
	#name : #ClyExpectedFailedTestMethodsQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#category : #'Calypso-SystemPlugins-SUnit-Queries-Tests'
}

{ #category : #running }
ClyExpectedFailedTestMethodsQueryTests >> createQuery [
	^ClyExpectedFailedTestMethodsQuery from: ClyClassScope of: ClyTestedClassTests in: environment
]

{ #category : #tests }
ClyExpectedFailedTestMethodsQueryTests >> testCheckIfEmpty [
	query scope: (ClyMethodScope
		of: ClyTestedClassTests >> #testExpectedFailure in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope 
		of: ClyTestedClassTests >> #testOne in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyExpectedFailedTestMethodsQueryTests >> testFromTwoMethods [

	self queryFromScope: ClyMethodScope ofAll: {
		ClyTestedClassTests >> #testExpectedFailure. 
		ClyTestedClassTests >> #testOne}.
	
	self assert: foundSelectors sorted asArray equals: #(testExpectedFailure) 
]

{ #category : #tests }
ClyExpectedFailedTestMethodsQueryTests >> testNotSelectsMethodWithoutExpectedFailurePragma [
	
	self deny: (query selectsMethod: ClyTestedClassTests >> #testOne)
]

{ #category : #tests }
ClyExpectedFailedTestMethodsQueryTests >> testSelectsTestMethodWithExpectedFailurePragma [
	
	self assert: (query selectsMethod: ClyTestedClassTests >> #testExpectedFailure)
]

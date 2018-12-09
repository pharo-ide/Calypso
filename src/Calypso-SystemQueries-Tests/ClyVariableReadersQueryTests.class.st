Class {
	#name : #ClyVariableReadersQueryTests,
	#superclass : #ClyVariableReferencesTestCase,
	#instVars : [
		'var2'
	],
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyVariableReadersQueryTests >> queryClass [
	^ClyVariableReadersQuery
]

{ #category : #'methods for tests' }
ClyVariableReadersQueryTests >> reader1OfVar1 [

	^readVar1
]

{ #category : #'methods for tests' }
ClyVariableReadersQueryTests >> reader2OfVar1 [

	^readVar1
]

{ #category : #running }
ClyVariableReadersQueryTests >> targetVarName [
	^#readVar1
]

{ #category : #tests }
ClyVariableReadersQueryTests >> testCheckIfEmpty [
	query scope: (ClyMethodScope of: self class >> #reader1OfVar1 in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: self class >> #writerOfVar1 in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyVariableReadersQueryTests >> testFromClassScope [

	self queryFromScope: ClyBothMetaLevelClassScope of: self class.
	
	self assert: resultItems size equals: 2.	
	self assert: foundSelectors equals: #(reader1OfVar1 reader2OfVar1)
]

{ #category : #tests }
ClyVariableReadersQueryTests >> testFromMethodScope [

	self 
		queryFromScope: ClyMethodScope
		ofAll: { self class >> #reader1OfVar1. self class >> #writerOfVar1 }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #reader1OfVar1)
]

{ #category : #tests }
ClyVariableReadersQueryTests >> testFromPackageScope [

	self queryFromScope: ClyPackageScope of: self class package.
	
	self assert: resultItems size equals: 3.	
	self assert: foundSelectors equals: #(reader1OfVar1 reader2OfVar1 supeclassReaderOfVar1)
]

{ #category : #'methods for tests' }
ClyVariableReadersQueryTests >> writerOfVar1 [

	readVar1 := #testValue
]

Class {
	#name : #ClyAllMethodsQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyAllMethodsQueryTests >> createQuery [
	^ ClyAllMethodsQuery from: ClyClassScope of: Object in: environment
]

{ #category : #tests }
ClyAllMethodsQueryTests >> testCheckIfEmpty [
	query scope: (ClyMethodScope
		of: (ClyClass1FromP1 >> #tag1Method1) in: environment).
	self deny: query checkEmptyResult
]

{ #category : #tests }
ClyAllMethodsQueryTests >> testFromSingleClass [

	self queryFromScope: ClyClassScope of: ClyClass1FromP1.
	
	self assert: foundSelectors equals: #(#instanceSideVar1ReaderMethod #instanceSideVar1WriterMethod #superclassTag1Method #tag1Method1)
]

Class {
	#name : #ClyTaggedClassesQueryTests,
	#superclass : #ClyClassQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyTaggedClassesQueryTests >> createQuery [
	^ ClyTaggedClassesQuery
		by: #Tag1
		from: (ClyClassScope of: Object in: environment)
]

{ #category : #tests }
ClyTaggedClassesQueryTests >> testCheckIfEmpty [
	query tag: #Tag1.
	query scope: (ClyClassScope of: ClyClass7WithTag1FromP5 in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyClassScope of: ClyClass8WithTag2FromP5 in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyTaggedClassesQueryTests >> testComparisonToSimilarQueryWithDifferentTag [
	
	| query2 |
	query2 := self createQuery.
	query2 tag: #AnotherTag1.
	
	self deny: query = query2
]

{ #category : #tests }
ClyTaggedClassesQueryTests >> testFromThreeClasses [
	query tag: #Tag1.
	
	self queryFromScope: ClyClassScope ofAll: {
		ClyClass6UntaggedFromP5. ClyClass7WithTag1FromP5. ClyClass8WithTag2FromP5 }.

	self assert: resultItems asArray equals: {ClyClass7WithTag1FromP5}
]

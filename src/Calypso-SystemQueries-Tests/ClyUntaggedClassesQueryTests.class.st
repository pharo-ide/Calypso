Class {
	#name : #ClyUntaggedClassesQueryTests,
	#superclass : #ClyClassQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyUntaggedClassesQueryTests >> createQuery [
	^ ClyUntaggedClassesQuery
		from: (ClyClassScope of: Object in: environment)
]

{ #category : #tests }
ClyUntaggedClassesQueryTests >> testCheckIfEmpty [
	query scope: (ClyClassScope of: ClyClass6UntaggedFromP5 in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyClassScope of: ClyClass7WithTag1FromP5 in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyUntaggedClassesQueryTests >> testFromThreeClasses [
	
	self queryFromScope: ClyClassScope ofAll: {
		ClyClass7WithTag1FromP5. ClyClass6UntaggedFromP5. ClyClass1FromP1 }.

	self assert: resultItems asSet equals: {ClyClass6UntaggedFromP5. ClyClass1FromP1} asSet
]

{ #category : #tests }
ClyUntaggedClassesQueryTests >> testNotSelectsTaggedClass [
	
	self deny: (query selectsClass: ClyClass7WithTag1FromP5)
]

{ #category : #tests }
ClyUntaggedClassesQueryTests >> testSelectsClassWithoutTags [
	
	self assert: (query selectsClass: ClyClass6UntaggedFromP5)
]

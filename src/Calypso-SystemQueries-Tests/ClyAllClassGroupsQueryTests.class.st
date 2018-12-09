Class {
	#name : #ClyAllClassGroupsQueryTests,
	#superclass : #ClyTypedQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyAllClassGroupsQueryTests >> createQuery [
	^ClyAllClassGroupsQuery from: ClyPackageScope of: Object package in: environment
]

{ #category : #running }
ClyAllClassGroupsQueryTests >> setUp [
	super setUp.
	
	environment addPlugin: ClyDefaultSystemEnvironmentPlugin new
]

{ #category : #tests }
ClyAllClassGroupsQueryTests >> testCheckIfEmpty [
	| scope |
	scope := ClyPackageScope of: ClyClass7WithTag1FromP5 package in: environment.
	query scope: scope.
	self deny: query checkEmptyResult.
	
	scope := ClyPackageScope of: ClySubclassMOfClass1FromP2 package in: environment.
	query scope: scope.
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyAllClassGroupsQueryTests >> testFromSinglePackage [

	self queryFromScope: ClyPackageScope of: ClyClass7WithTag1FromP5 package.
	
	self assert: (resultItems collect: #class as: Set) equals: { ClyNoTagClassGroup. ClyTaggedClassGroup. ClyClassGroup} asSet.
	self 
		assert: (resultItems select:[:each | each class = ClyTaggedClassGroup] thenCollect: #tag) asSet
		equals: ClyClass7WithTag1FromP5 package tagsForClasses asSet
]

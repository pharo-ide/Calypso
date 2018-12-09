Class {
	#name : #ClyAllMethodGroupsQueryTests,
	#superclass : #ClyTypedQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyAllMethodGroupsQueryTests >> createQuery [
	^ClyAllMethodGroupsQuery from: ClyClassScope of: Object in: environment
]

{ #category : #running }
ClyAllMethodGroupsQueryTests >> setUp [
	super setUp.
	
	environment addPlugin: ClyDefaultSystemEnvironmentPlugin new
]

{ #category : #tests }
ClyAllMethodGroupsQueryTests >> testCheckIfEmpty [
	| scope |
	scope := ClyInstanceSideScope of: ClyClass1FromP1 in: environment.
	query scope: scope.
	
	self deny: query checkEmptyResult
]

{ #category : #tests }
ClyAllMethodGroupsQueryTests >> testConvertingToNewMetaLevel [

	| newQuery |
	newQuery := query withMetaLevelScope: ClyInstanceSideScope.
	
	self assert: newQuery scope class equals: ClyInstanceSideScope.
	self assert: newQuery scope basisObjects equals: query scope basisObjects.
]

{ #category : #tests }
ClyAllMethodGroupsQueryTests >> testFromSingleClass [

	self queryFromScope: ClyInstanceSideScope of: ClyClass1FromP1.
	
	self assert: (resultItems collect: #class as: Set) equals: { ClyAllMethodGroup. ClyTaggedMethodGroup} asSet.
	self 
		assert: (resultItems select:[:each | each class = ClyTaggedMethodGroup] thenCollect: #tag) asSet
		equals: ClyClass1FromP1 tagsForMethods asSet
]

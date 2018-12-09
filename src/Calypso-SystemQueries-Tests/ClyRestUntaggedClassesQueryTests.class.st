Class {
	#name : #ClyRestUntaggedClassesQueryTests,
	#superclass : #ClyClassQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyRestUntaggedClassesQueryTests >> createQuery [
	^ClyRestUntaggedClassesQuery from: ClyPackageScope of: Object package in: environment
]

{ #category : #tests }
ClyRestUntaggedClassesQueryTests >> testEmptyInPackageWithoutAnyTags [
	query scope: (ClyPackageScope 
		of: ClyClass9FromPExtendedByP5 package in: environment).
		
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyRestUntaggedClassesQueryTests >> testFromPackageWithExtensionsButWithoutTags [
	
	self queryFromScope: ClyPackageScope of: ClyClass1FromP1 package.

	self assert: resultItems isEmpty
]

{ #category : #tests }
ClyRestUntaggedClassesQueryTests >> testFromPackageWithTagsAndUncategorizedClasses [
	
	self queryFromScope: ClyPackageScope of: ClyClass6UntaggedFromP5 package.

	self assert: resultItems asSet equals: {ClyClass6UntaggedFromP5} asSet
]

{ #category : #tests }
ClyRestUntaggedClassesQueryTests >> testFromPackageWithoutTagsAndExtensions [
	
	self queryFromScope: ClyPackageScope of: ClyClass9FromPExtendedByP5 package.

	self assert: resultItems isEmpty
]

{ #category : #tests }
ClyRestUntaggedClassesQueryTests >> testIsEmptyFromEmptyClassScope [
	"This query supports only package scope"
	<expectedFailure>
	
	super testIsEmptyFromEmptyClassScope
]

{ #category : #tests }
ClyRestUntaggedClassesQueryTests >> testNotEmptyInPackageWithTagsAndUncategorizedClasses [
	query scope: (ClyPackageScope 
		of: ClyClass6UntaggedFromP5 package in: environment).
		
	self deny: query checkEmptyResult
]

{ #category : #tests }
ClyRestUntaggedClassesQueryTests >> testNotSelectsTaggedClass [
	
	self deny: (query selectsClass: ClyClass7WithTag1FromP5)
]

{ #category : #tests }
ClyRestUntaggedClassesQueryTests >> testSelectsClassWithoutTags [
	
	self assert: (query selectsClass: ClyClass6UntaggedFromP5)
]

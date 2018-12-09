Class {
	#name : #ClyAllClassesQueryTests,
	#superclass : #ClyClassQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyAllClassesQueryTests >> createQuery [
	^ ClyAllClassesQuery from: ClyClassScope of: Object in: environment
]

{ #category : #tests }
ClyAllClassesQueryTests >> testCheckIfEmpty [
	query scope: (ClyClassScope of: ClyClass1FromP1 in: environment).
	
	self deny: query checkEmptyResult
]

{ #category : #tests }
ClyAllClassesQueryTests >> testFromSinglePackage [

	self queryFromScope: ClyPackageScope of: ClyClass1FromP1 package.

	self assert: resultItems asSet equals: ClyClass1FromP1 package definedClasses.
	self deny: (resultItems includes: ClySubclassLOfClass0FromPExtendedByP1)
]

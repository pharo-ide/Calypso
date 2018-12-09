Class {
	#name : #ClyExtendingPackagesQueryTests,
	#superclass : #ClyPackageQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyExtendingPackagesQueryTests >> createQuery [
	^ ClyExtendingPackagesQuery from: ClyClassScope of: Object in: environment
]

{ #category : #tests }
ClyExtendingPackagesQueryTests >> testCheckIfEmpty [
	query scope: (ClyClassScope of: ClySubclassLOfClass0FromPExtendedByP1 in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyClassScope of: ClyClass1FromP1 in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyExtendingPackagesQueryTests >> testFromClassWhichIncludesTwoProtocolExtensionsOfSamePackage [

	self queryFromScope: ClyClassScope of: ClyClass9FromPExtendedByP5.

	self assert: resultItems asSet equals: {ClyClass7WithTag1FromP5 package} asSet
]

{ #category : #tests }
ClyExtendingPackagesQueryTests >> testFromSingleClass [

	self queryFromScope: ClyClassScope of: ClySubclassLOfClass0FromPExtendedByP1.

	self assert: resultItems asSet equals: {ClyClass1FromP1 package} asSet
]

{ #category : #tests }
ClyExtendingPackagesQueryTests >> testFromTwoClasses [

	self queryFromScope: ClyClassScope ofAll: {
		ClyClass9FromPExtendedByP5. ClySubclassLOfClass0FromPExtendedByP1 }.

	self assert: resultItems asSet equals: {ClyClass1FromP1 package. ClyClass7WithTag1FromP5 package} asSet
]

Class {
	#name : #ClyPackageExtensionMethodsQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyPackageExtensionMethodsQueryTests >> createQuery [
	^ ClyPackageExtensionMethodsQuery
		of: ClyClass1FromP1 package
		from: (ClyClassScope of: ClyClass1FromP1 in: environment)
]

{ #category : #tests }
ClyPackageExtensionMethodsQueryTests >> testCheckIfEmpty [
	query scope: (ClyMethodScope 
		of: ClySubclassLOfClass0FromPExtendedByP1 >> #extensionMethodFromSubclassL
		in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: ClyClass9FromPExtendedByP5 >> #extensionMethodFromClass9 in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyPackageExtensionMethodsQueryTests >> testComparisonToSimilarQueryButWithDifferentPackage [

	| query2 |
	query package: Object package.
	query2 := self createQuery.
	query2 package: String package.
	
	self deny: query = query2
]

{ #category : #tests }
ClyPackageExtensionMethodsQueryTests >> testFromThreeMethods [

	self queryFromScope: ClyMethodScope ofAll: {
		ClyClass1FromP1 >> #tag1Method1. Object >> #printString. 
		ClySubclassLOfClass0FromPExtendedByP1 >> #extensionMethodFromSubclassL.
		ClyClass9FromPExtendedByP5 >> #extensionMethodFromClass9}.
	
	self assert: foundSelectors equals: #(#extensionMethodFromSubclassL)
]

Class {
	#name : #ClyAllPackagesQueryTests,
	#superclass : #ClyPackageQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyAllPackagesQueryTests >> createQuery [
	^ ClyAllPackagesQuery from: ClyPackageScope of: Object package in: environment
]

{ #category : #tests }
ClyAllPackagesQueryTests >> testCheckIfEmpty [
	query scope: (ClyPackageScope of: ClyClass1FromP1 package in: environment).
	
	self deny: query checkEmptyResult
]

{ #category : #tests }
ClyAllPackagesQueryTests >> testFromSinglePackage [

	self queryFromScope: ClyPackageScope of: ClyClass1FromP1 package.

	self assert: resultItems asSet equals: {ClyClass1FromP1 package} asSet
]

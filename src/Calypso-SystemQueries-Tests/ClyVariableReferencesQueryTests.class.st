Class {
	#name : #ClyVariableReferencesQueryTests,
	#superclass : #ClyVariableReferencesTestCase,
	#instVars : [
		'var2'
	],
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #running }
ClyVariableReferencesQueryTests >> queryClass [
	^ClyVariableReferencesQuery 
]

{ #category : #'methods for tests' }
ClyVariableReferencesQueryTests >> reference1OfVar1 [

	^referencedVar1
]

{ #category : #'methods for tests' }
ClyVariableReferencesQueryTests >> reference2OfVar1 [

	referencedVar1 := #testValue
]

{ #category : #'methods for tests' }
ClyVariableReferencesQueryTests >> referenceOfAnotherVar [

	^var2
]

{ #category : #running }
ClyVariableReferencesQueryTests >> targetVarName [
	^#referencedVar1 
]

{ #category : #tests }
ClyVariableReferencesQueryTests >> testCheckIfEmpty [
	query scope: (ClyMethodScope of: self class >> #reference1OfVar1 in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: self class >> #referenceOfAnotherVar in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyVariableReferencesQueryTests >> testForClassVariable [

	| classVar |
	classVar := ClyClassVariable named: #ClassVar1 definedIn: ClyClass2FromP1.
	query := ClyVariableReferencesQuery of: classVar.
	self queryFromScope: ClyClassScope of: ClyClass2FromP1.
	
	self assert: resultItems size equals: 2.	
	self assert: foundSelectors equals: #(instanceSideClassVar1Reader instanceSideClassVar1Writer)
]

{ #category : #tests }
ClyVariableReferencesQueryTests >> testForSharedClassVariable [

	| classVar |
	classVar := ClyClassVariable named: #DayNames definedIn: ChronologyConstants.
	query := ClyVariableReferencesQuery of: classVar.
	self queryFromScope: ClyBothMetaLevelClassScope of: Date.
	
	self assert: resultItems notEmpty
]

{ #category : #tests }
ClyVariableReferencesQueryTests >> testFromClassScope [

	self queryFromScope: ClyClassScope of: self class.
	
	self assert: resultItems size equals: 2.	
	self assert: foundSelectors equals: #(reference1OfVar1 reference2OfVar1)
]

{ #category : #tests }
ClyVariableReferencesQueryTests >> testFromMethodScope [

	self 
		queryFromScope: ClyMethodScope
		ofAll: { self class >> #reference1OfVar1. self class >> #referenceOfAnotherVar }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #reference1OfVar1)
]

{ #category : #tests }
ClyVariableReferencesQueryTests >> testFromPackageScope [

	self queryFromScope: ClyPackageScope of: self class package.
	
	self assert: resultItems size equals: 3.	
	self assert: foundSelectors equals: #(reference1OfVar1 reference2OfVar1 #supeclassReferenceOfVar1)
]

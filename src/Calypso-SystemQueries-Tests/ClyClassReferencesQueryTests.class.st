Class {
	#name : #ClyClassReferencesQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #'methods for tests' }
ClyClassReferencesQueryTests class >> classSideReference1OfClass [

	^ClyClassReferencesQueryTests 
]

{ #category : #running }
ClyClassReferencesQueryTests >> createQuery [
	^ ClyClassReferencesQuery
		to: self referencedClass
		from: (ClyClassScope of: Object in: environment)
]

{ #category : #'methods for tests' }
ClyClassReferencesQueryTests >> reference1OfClass [

	^ClyClassReferencesQueryTests 
]

{ #category : #'methods for tests' }
ClyClassReferencesQueryTests >> reference2OfClass [

	^ClyClassReferencesQueryTests 
]

{ #category : #'methods for tests' }
ClyClassReferencesQueryTests >> referenceOfAnotherClass [

	^Point
]

{ #category : #'methods for tests' }
ClyClassReferencesQueryTests >> referenceOfNumberClassByNameSymbol [

	^#Number
]

{ #category : #'methods for tests' }
ClyClassReferencesQueryTests >> referenceOfSmalltalk [

	^Smalltalk
]

{ #category : #running }
ClyClassReferencesQueryTests >> referencedClass [
	^self class
]

{ #category : #running }
ClyClassReferencesQueryTests >> setUp [
	super setUp.
	
	environment system: ClySystemEnvironment currentImage.
	environment detachFromSystem.
]

{ #category : #tests }
ClyClassReferencesQueryTests >> testCheckIfEmpty [
	query scope: (ClyMethodScope
		of: (self class >> #reference1OfClass) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (self class >> #referenceOfAnotherClass) in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyClassReferencesQueryTests >> testComparison [

	self 
		assert: (ClyClassReferencesQuery to: Point) 
		equals: (ClyClassReferencesQuery to: Point).
	
	self 
		assert: (ClyClassReferencesQuery to: Point) hash 
		equals: (ClyClassReferencesQuery to: Point) hash.
		
	self deny: (ClyClassReferencesQuery to: Point)
					 = (ClyClassReferencesQuery to: Rectangle)
]

{ #category : #tests }
ClyClassReferencesQueryTests >> testDescriptionWhenSimpleClassBindingIsUsed [

	query := ClyClassReferencesQuery to: Object binding.
	
	self assert: query description equals: 'references to Object'
]

{ #category : #tests }
ClyClassReferencesQueryTests >> testForGlobalVariable [

	query variableQuery: (ClyConstantQuery returning: {self class environment bindingOf: #Smalltalk}).
	self queryFromScope: ClyMethodScope of: self class >> #referenceOfSmalltalk.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #referenceOfSmalltalk)
]

{ #category : #tests }
ClyClassReferencesQueryTests >> testForMetaclass [

	query := ClyClassReferencesQuery to: self referencedClass classSide.
	
	self queryFromScope: ClyMethodScope of: self class >> #reference1OfClass.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #reference1OfClass)
]

{ #category : #tests }
ClyClassReferencesQueryTests >> testFromClassScope [

	self queryFromScope: ClyBothMetaLevelClassScope of: self class.
	
	self assert: resultItems size equals: 3.	
	self assert: foundSelectors equals: #(classSideReference1OfClass reference1OfClass reference2OfClass)
]

{ #category : #tests }
ClyClassReferencesQueryTests >> testFromMethodScope [

	self 
		queryFromScope: ClyMethodScope
		ofAll: { self class >> #reference1OfClass. self class >> #referenceOfAnotherClass }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #reference1OfClass)
]

{ #category : #tests }
ClyClassReferencesQueryTests >> testFromPackageScope [

	self queryFromScope: ClyPackageScope of: self class package.
	
	self assert: resultItems size equals: 3.	
	self assert: foundSelectors equals: #(classSideReference1OfClass reference1OfClass reference2OfClass)
]

{ #category : #tests }
ClyClassReferencesQueryTests >> testFromSystemScope [

	self queryFromScope: ClySystemEnvironmentScope of: ClySystemEnvironment currentImage.
	
	self assert: resultItems size equals: 3.	
	self assert: foundSelectors equals: #(classSideReference1OfClass reference1OfClass reference2OfClass)
]

{ #category : #tests }
ClyClassReferencesQueryTests >> testShouldFoundClassNameSymbolReference [

	query variableQuery: (ClyConstantQuery returning: { Number }).
	self 
		queryFromScope: ClyMethodScope
		of: self class >> #referenceOfNumberClassByNameSymbol.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #referenceOfNumberClassByNameSymbol)
]

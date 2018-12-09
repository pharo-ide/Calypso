Class {
	#name : #ClyUnimplementedMethodsQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#category : #'Calypso-SystemPlugins-InheritanceAnalysis-Queries-Tests'
}

{ #category : #running }
ClyUnimplementedMethodsQueryTests >> createQuery [
	^ClyUnimplementedMethodsQuery 
		from: ClyClassScope 
		of: ClyClassWhichInheritsAbstractSubclass
		in: environment
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testCheckIfEmpty [
	query scope: (ClyClassScope of: ClyAbstractSubclassExample in: environment).
	self deny: query checkEmptyResult.	"it has unimplemented #abstractMethod2"

	query scope: (ClyClassScope of: ClyAbstractClassExample in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testFromSingleClass [

	self executeQuery.
	
	self assert: foundSelectors equals: #(abstractMethod2 abstractSubclassMethod)

]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testIsAffectedByChangeOfAbstractMethodWhichIsImplemented [
	
	self assert: (query isAffectedByChangedMethod: ClyAbstractClassExample >> #abstractMethod1)
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testIsAffectedByChangeOfAbstractMethodWhichIsNotImplemented [
	
	self assert: (query isAffectedByChangedMethod: ClyAbstractClassExample>>#abstractMethod2).
	self assert: (query isAffectedByChangedMethod: ClyAbstractSubclassExample>>#abstractSubclassMethod)
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testIsAffectedByChangeOfMethodOfTargetClassWhichOverridesAbstractOne [
	query scope: (ClyClassScope	of: ClyClassWhichInheritsAbstractClass in: environment).
		
	self assert: (query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >> #abstractMethod1)
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testIsAffectedByChangeOfNotAbstractMethodWhichImplementsAbstractOne [
	
	self assert: (query isAffectedByChangedMethod: ClyAbstractSubclassExample >> #abstractMethod1)
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testIsEmptyForExplicitlyDefinedAbstractClass [

	query scope: (ClyClassScope of: ClyExplicitAbstractClassExample in: environment).

	self assert: query checkEmptyResult.
	
	self executeQuery.
	
	self assert: foundSelectors isEmpty
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testIsEmptyForExplicitlyDefinedAbstractMetaclass [

	query scope: (ClyClassScope of: ClyExplicitAbstractClassExample class in: environment).

	self assert: query checkEmptyResult.
	
	self executeQuery.
	
	self assert: foundSelectors isEmpty
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testIsEmptyFromEmptyClassScope [
	query scope: (ClyClassScope emptyIn: environment).
	
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testIsEmptyFromEmptyMethodScope [
	"This query only supports class, package and global scopes
	because it analyses classes and only then methods"
	<expectedFailure>
	super testIsEmptyFromEmptyMethodScope
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testNotAffectedByChangeOfAbstractMethodOfNotRelatedClass [
	
	self deny: (query isAffectedByChangedMethod: self class >> #createQuery)
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testNotAffectedByChangeOfNotAbstractMethod [
	query scope: (ClyClassScope of: ClyClassWhichInheritsAbstractClass in: environment).
	
	self deny: (query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod)
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testNotSelectsAbstractMethodWhichIsImplemented [
	
	self deny: (query selectsMethod: ClyAbstractClassExample >> #abstractMethod1)
]

{ #category : #tests }
ClyUnimplementedMethodsQueryTests >> testSelectsAbstractMethodWhichIsNotImplemented [

	self assert: (query selectsMethod: ClyAbstractClassExample>>#abstractMethod2).
	self assert: (query selectsMethod: ClyAbstractSubclassExample>>#abstractSubclassMethod)
]

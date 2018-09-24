Class {
	#name : #ClyIncreasedClassScope,
	#superclass : #ClyClassHierarchyScope,
	#instVars : [
		'extraClasses',
		'showsOverriddenMethods'
	],
	#category : #'Calypso-SystemQueries-Scopes'
}

{ #category : #comparing }
ClyIncreasedClassScope >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	super = anObject ifFalse: [ ^ false ].
	^ showsOverriddenMethods = anObject showsOverriddenMethods
		and: [ extraClasses = anObject extraClasses]
]

{ #category : #queries }
ClyIncreasedClassScope >> classesDo: aBlock [

	extraClasses do: aBlock
]

{ #category : #queries }
ClyIncreasedClassScope >> classesRelatedTo: aClass do: aBlock [
	self shouldNotImplement
]

{ #category : #accessing }
ClyIncreasedClassScope >> extraClasses [
	^ extraClasses
]

{ #category : #accessing }
ClyIncreasedClassScope >> extraClasses: anObject [
	extraClasses := anObject
]

{ #category : #comparing }
ClyIncreasedClassScope >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ showsOverriddenMethods hash bitXor: extraClasses hash
]

{ #category : #accessing }
ClyIncreasedClassScope >> hideOverriddenMethods [
	showsOverriddenMethods := false
]

{ #category : #accessing }
ClyIncreasedClassScope >> initialize [ 	
	super initialize.
	
	showsOverriddenMethods := true
]

{ #category : #testing }
ClyIncreasedClassScope >> isMethodOverridden: aMethod [

	^basisObjects anySatisfy: [ :each | 
		(each inheritsFrom: aMethod origin) 
			and: [ (each lookupSelector: aMethod selector) ~~ aMethod] ]
]

{ #category : #queries }
ClyIncreasedClassScope >> methodsDo: aBlock [

	showsOverriddenMethods ifTrue: [ ^super methodsDo: aBlock ].
	
	self classesDo: [ :eachClass | 
		eachClass localMethods do: [:eachMethod | 
			(self isMethodOverridden: eachMethod) ifFalse: [ aBlock value: eachMethod ]]]
]

{ #category : #accessing }
ClyIncreasedClassScope >> showOverriddenMethods [
	showsOverriddenMethods := true
]

{ #category : #accessing }
ClyIncreasedClassScope >> showsOverriddenMethods [
	^ showsOverriddenMethods
]

{ #category : #accessing }
ClyIncreasedClassScope >> showsOverriddenMethods: anObject [
	showsOverriddenMethods := anObject
]

Class {
	#name : #ClyIncreasedClassScope,
	#superclass : #ClyClassHierarchyScope,
	#instVars : [
		'extraClasses',
		'showsOverriddenMethods'
	],
	#category : #'Calypso-SystemQueries-Scopes'
}

{ #category : #'instance creation' }
ClyIncreasedClassScope class >> of: aBasisClass withAll: extraClasses [

	^(self of: aBasisClass)
		extraClasses: extraClasses
]

{ #category : #'instance creation' }
ClyIncreasedClassScope class >> of: aBasisClass withAll: extraClasses localScope: aLocalScopeClass [

	^(self of: aBasisClass localScope: aLocalScopeClass)
		extraClasses: extraClasses
]

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

	basisObjects do: [:each | 
		self metaLevelsOf: each do: aBlock].
	extraClasses do: [:each | 
		self metaLevelsOf: each do: aBlock]
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
ClyIncreasedClassScope >> extraClasses: aCollection [
	extraClasses := aCollection asSet.
	extraClasses removeAllFoundIn: basisObjects
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

{ #category : #converting }
ClyIncreasedClassScope >> increasedByClassesFrom: aClassScope [

	^self withExtraClasses: aClassScope collectAllClasses
]

{ #category : #initialization }
ClyIncreasedClassScope >> initialize [ 	
	super initialize.
	
	showsOverriddenMethods := true
]

{ #category : #testing }
ClyIncreasedClassScope >> isIncreasedClassScope [
	^true
]

{ #category : #testing }
ClyIncreasedClassScope >> isMethod: aMethod overriddenBy: aClass [

	self metaLevelsOf: aClass do: [:eachClassSide | 
		(eachClassSide overridesMethod: aMethod) ifTrue: [ ^true ] ].
	^false
]

{ #category : #testing }
ClyIncreasedClassScope >> isMethodOverridden: aMethod [

	^basisObjects anySatisfy: [ :each | 
		self isMethod: aMethod overriddenBy: each]
]

{ #category : #queries }
ClyIncreasedClassScope >> methodsDo: aBlock [
	showsOverriddenMethods ifTrue: [ ^super methodsDo: aBlock ].
	
	basisObjects do: [:eachClass | 
		self metaLevelsOf: eachClass do: [:eachClassSide | 
			eachClassSide localMethods do: aBlock]].	
	extraClasses do: [:eachClass | 
		self metaLevelsOf: eachClass do: [:eachClassSide | 
			eachClassSide localMethods do: [:eachMethod | 
				(self isMethodOverridden: eachMethod) ifFalse: [ aBlock value: eachMethod ]]]]
]

{ #category : #converting }
ClyIncreasedClassScope >> reducedByClassesFrom: aClassScope [

	| myClasses classesToExclude |
	myClasses := extraClasses collect: [:each | each instanceSide].
	classesToExclude := aClassScope collectAllClasses collect: [:each | each instanceSide].
	^(myClasses copyWithoutAll: classesToExclude)
		ifEmpty: [ self asLocalClassScope ]
		ifNotEmpty: [:newExtraClasses | self copy extraClasses: newExtraClasses ]
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

{ #category : #converting }
ClyIncreasedClassScope >> withExtraClasses: classes [

	^self copy 
		extraClasses: extraClasses , classes 
]

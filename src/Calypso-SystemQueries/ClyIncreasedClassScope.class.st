"
I am a class scope implementing increased method visibility logic of full browser.

I am created on class basis as other class scopes but with extra list classes which should be considered as part of full class scope.

In addition I implement logic to hide overridden methods of those extra classes:

	scope hideOverriddenMethods.
	scope showOverriddenMethods
	scope withToggledOverriddenMethodVisibility.
	
It covers old behaviour of Nautilus where class with traits was shown only with actual methods in the browser (overridden trait methods were hidden). 

I provide settings on class side for this behavior: 

	ClyIncreasedClassScope showsOverriddenMethodsByDefault 

My instances are created from other classs scopes using following messages: 

	aClassScope increasedByClassesFrom: extraClassScope.

And I allow reduce set of extra classes: 

	anIncreasedClassScope reducedByClassesFrom: extraClassScope.

In case if result set of classes become empty I return local class scope of my basis.

You can check any scope that it is increased: 

	aClassScope isIncreasedClassScope 
	
To manually create my instance use following methods: 

	ClyIncreasedClassScope of: Array withAll: { Object }.
	ClyIncreasedClassScope of: Array withAll: { Object }	 localScope: ClyInstanceSideSCope.
		 
Internal Representation and Key Implementation Points.

    Instance Variables
	extraClasses:		<Set of: <Behavior>>
	showsOverriddenMethods:		<Boolean>
"
Class {
	#name : #ClyIncreasedClassScope,
	#superclass : #ClyClassHierarchyScope,
	#instVars : [
		'extraClasses',
		'showsOverriddenMethods'
	],
	#classVars : [
		'ShowsOverriddenMethodsByDefault'
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

{ #category : #settings }
ClyIncreasedClassScope class >> settingsOn: aBuilder [
	<systemsettings>
	(aBuilder setting: #showsOverriddenMethodsByDefault)
		parent: #Calypso;
		label: 'Show overridden methods when inherited methods are visible?';
		description: 'If true, all inherited methods will be shown including trait methods which are overridden in class';
		target: self
]

{ #category : #accessing }
ClyIncreasedClassScope class >> showsOverriddenMethodsByDefault [
	^ ShowsOverriddenMethodsByDefault ifNil: [ShowsOverriddenMethodsByDefault := false]
]

{ #category : #accessing }
ClyIncreasedClassScope class >> showsOverriddenMethodsByDefault: anObject [
	ShowsOverriddenMethodsByDefault := anObject
]

{ #category : #accessing }
ClyIncreasedClassScope class >> toggleOverriddenMethodVisibility [
	<script>
	ShowsOverriddenMethodsByDefault := self showsOverriddenMethodsByDefault not
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
	
	showsOverriddenMethods := self class showsOverriddenMethodsByDefault
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

{ #category : #converting }
ClyIncreasedClassScope >> withToggledOverriddenMethodVisibility [

	^self copy 
		showsOverriddenMethods: showsOverriddenMethods not
]

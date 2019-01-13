"
I represent the way how to browse selected classes in full browser.
It can be eighter method groups mode or variables mode which are implemented by my subclasses.

So my instances keep: 
- methodGroupQuery for third pane of browser.
- metaLevelScope for class side and instance side.
- classScopeForMethods to query all methods from selected classes 

Subclasses should implement main method which set up methodGroupQuery:

- setUpDefaultMethodGroupQuery

My instances are supposed to be converted from each others when user decides to show class methods differently. It is implemented by several switch methods: 

- switchToNewClassSelection. New mode is created when user changes class selection.

- switchToMetaLevelScope: aMetaLevelScopeClass. New mode is created when user toggle class side.

- switchToMethodGroups. It is subclass responsibility. Each subclass should return opposite mode instance but with same meta level.

- switchToVariable. Same logic as for #switchToMethodGroups.

- switchMethodVisibilityTo: aClassScope. New mode is created when user changes method visibility of browser.

- switchOverriddenMethodVisibility. New mode is created when user enable/disable visibility of overridden methods 

According to logic of concrete browser mode these methods set up specific methodGroupQuery and classScopeForMethods (look at #controlling protocol).

To create instance of mode use following methods: 

- of: aBrowser. To create mode for current class selection.
- switchedFrom: anotherBrowserMode. To perform switch to another type of browser mode. 

Internal Representation and Key Implementation Points.

    Instance Variables
	browser:		<ClyFullBrowser>
	classScopeForMethods:		<ClyClassScope>
	metaLevelScope:		<ClyMetaLevelClassScope class>
	methodGroupQuery:		<ClyQuery>
"
Class {
	#name : #ClyClassBrowserMode,
	#superclass : #Object,
	#instVars : [
		'metaLevelScope',
		'methodGroupQuery',
		'browser',
		'classScopeForMethods'
	],
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #'instance creation' }
ClyClassBrowserMode class >> of: aBrowser [

	^self new 
		browser: aBrowser;
		setUpForSelectedClasses
]

{ #category : #'instance creation' }
ClyClassBrowserMode class >> switchedFrom: anotherBrowserMode [

	^self new
		initializeFromMode: anotherBrowserMode
]

{ #category : #comparing }
ClyClassBrowserMode >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ methodGroupQuery = anObject methodGroupQuery
		and: [ classScopeForMethods = anObject classScopeForMethods
				and: [ metaLevelScope = anObject metaLevelScope ] ]
]

{ #category : #accessing }
ClyClassBrowserMode >> allMethodQuery [
	^ClyAllMethodsQuery sortedFrom: classScopeForMethods
]

{ #category : #accessing }
ClyClassBrowserMode >> browser [
	^ browser
]

{ #category : #accessing }
ClyClassBrowserMode >> browser: anObject [
	browser := anObject
]

{ #category : #accessing }
ClyClassBrowserMode >> classScopeForMethods [
	^classScopeForMethods 
]

{ #category : #accessing }
ClyClassBrowserMode >> classScopeForMethods: aClassScope [ 
	classScopeForMethods := aClassScope
]

{ #category : #accessing }
ClyClassBrowserMode >> currentSideOfClass: aClass [
	^metaLevelScope metaLevelOf: aClass
]

{ #category : #comparing }
ClyClassBrowserMode >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ methodGroupQuery hash
		bitXor: (classScopeForMethods hash bitXor: metaLevelScope hash)
]

{ #category : #initialization }
ClyClassBrowserMode >> initialize [
	super initialize.
	metaLevelScope := ClyInstanceSideScope 
]

{ #category : #initialization }
ClyClassBrowserMode >> initializeFromMode: aBrowserMode [
	browser := aBrowserMode browser.
	metaLevelScope := aBrowserMode metaLevelScope.
	classScopeForMethods := aBrowserMode classScopeForMethods.
	self setUpDefaultMethodGroupQuery
]

{ #category : #testing }
ClyClassBrowserMode >> isClassSideMetaLevel [

	^metaLevelScope = ClyClassSideScope
]

{ #category : #testing }
ClyClassBrowserMode >> isInstanceSideMetaLevel [

	^metaLevelScope = ClyInstanceSideScope
]

{ #category : #testing }
ClyClassBrowserMode >> isMethodVisibilityIncreased [

	^classScopeForMethods isIncreasedClassScope 
]

{ #category : #testing }
ClyClassBrowserMode >> isOverriddenInheritedMethodsVisible [

	^self isMethodVisibilityIncreased and: [ 
		classScopeForMethods showsOverriddenMethods ]
]

{ #category : #accessing }
ClyClassBrowserMode >> metaLevelScope [
	^ metaLevelScope
]

{ #category : #accessing }
ClyClassBrowserMode >> metaLevelScope: anObject [
	metaLevelScope := anObject
]

{ #category : #accessing }
ClyClassBrowserMode >> methodGroupQuery [
	^ methodGroupQuery
]

{ #category : #accessing }
ClyClassBrowserMode >> methodGroupQuery: anObject [
	methodGroupQuery := anObject
]

{ #category : #controlling }
ClyClassBrowserMode >> setUpDefaultMethodGroupQuery [
	self subclassResponsibility 
]

{ #category : #controlling }
ClyClassBrowserMode >> setUpDefaultMethodVisibility [
	
	ClyMethodVisibilityLevel allSubclassesDo: [ :each | 
		(each isDefault and: (each canBeAppliedForClasses: browser classSelection items))
			ifTrue: [^classScopeForMethods := each extendClassScope: classScopeForMethods ]]
]

{ #category : #controlling }
ClyClassBrowserMode >> setUpForSelectedClasses [
	classScopeForMethods := 	browser classSelection asItemsScope: metaLevelScope.
	self setUpDefaultMethodVisibility.
	self setUpDefaultMethodGroupQuery
]

{ #category : #controlling }
ClyClassBrowserMode >> setUpMethodVisibility: aClassScope [

	classScopeForMethods := aClassScope
]

{ #category : #controlling }
ClyClassBrowserMode >> setUpNewMetaLevelScope: aMetaLevelScopeClass [
	metaLevelScope := aMetaLevelScopeClass.
	classScopeForMethods := classScopeForMethods withMetaLevel: metaLevelScope.
	methodGroupQuery := methodGroupQuery withMetaLevelScope: metaLevelScope
]

{ #category : #converting }
ClyClassBrowserMode >> switchMethodVisibilityTo: aClassScope [

	^self copy
		setUpMethodVisibility: aClassScope
]

{ #category : #converting }
ClyClassBrowserMode >> switchOverriddenMethodVisibility [
	self isMethodVisibilityIncreased ifFalse: [ ^self ].
	
	^self copy
		classScopeForMethods: classScopeForMethods withToggledOverriddenMethodVisibility
]

{ #category : #converting }
ClyClassBrowserMode >> switchToMetaLevelScope: aMetaLevelScopeClass [

	metaLevelScope = aMetaLevelScopeClass ifTrue: [ ^self ].
	
	^self copy 
		setUpNewMetaLevelScope: aMetaLevelScopeClass
]

{ #category : #converting }
ClyClassBrowserMode >> switchToMethodGroups [
	self subclassResponsibility 
]

{ #category : #converting }
ClyClassBrowserMode >> switchToNewClassSelection [
	^self copy
		setUpForSelectedClasses 
]

{ #category : #converting }
ClyClassBrowserMode >> switchToVariables [
	self subclassResponsibility 
]

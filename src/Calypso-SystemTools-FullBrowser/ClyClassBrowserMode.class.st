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

{ #category : #accessing }
ClyClassBrowserMode >> allMethodQuery [
	^ClyAllMethods sortedFrom: classScopeForMethods
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
ClyClassBrowserMode >> currentSideOfClass: aClass [
	^metaLevelScope metaLevelOf: aClass
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
	classScopeForMethods := aBrowserMode classScopeForMethods
]

{ #category : #testing }
ClyClassBrowserMode >> isClassSideMetaLevel [

	^metaLevelScope = ClyClassSideScope
]

{ #category : #testing }
ClyClassBrowserMode >> isInstanceSideMetaLevel [

	^metaLevelScope = ClyInstanceSideScope
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
ClyClassBrowserMode >> restrictMethodVisibilityBy: aClassScope [

	classScopeForMethods := classScopeForMethods restrictedBy: aClassScope
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
	self setUpDefaultMethodVisibility
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
		restrictMethodVisibilityBy: aClassScope
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

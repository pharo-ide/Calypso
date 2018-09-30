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
ClyClassBrowserMode class >> initialFor: aBrowser [

	^self new 
		initializeFor: aBrowser
]

{ #category : #'instance creation' }
ClyClassBrowserMode class >> of: aBrowser [

	^self new 
		browser: aBrowser;
		setUpForSelectedClasses
]

{ #category : #'instance creation' }
ClyClassBrowserMode class >> switchedFrom: anotherBrowserMode [

	^(self initialFor: anotherBrowserMode browser)
		initializeFromMode: anotherBrowserMode
]

{ #category : #'current queries' }
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

{ #category : #'current scopes' }
ClyClassBrowserMode >> classScopeForMethods [
	^classScopeForMethods 
]

{ #category : #'current scopes' }
ClyClassBrowserMode >> currentSideOfClass: aClass [
	^metaLevelScope metaLevelOf: aClass
]

{ #category : #initialization }
ClyClassBrowserMode >> emptyMethodGroupQueryFor: aBrowser [ 
	self subclassResponsibility 
]

{ #category : #converting }
ClyClassBrowserMode >> forMethodVisibilityRestrictedBy: aClassScope [

	^self copy
		restrictMethodVisibilityBy: aClassScope
]

{ #category : #converting }
ClyClassBrowserMode >> forNewClassSelection [
	^self copy
		setUpForSelectedClasses 
]

{ #category : #converting }
ClyClassBrowserMode >> forNewMetaLevelScope: aMetaLevelScopeClass [

	metaLevelScope = aMetaLevelScopeClass ifTrue: [ ^self ].
	
	^self copy 
		setUpNewMetaLevelScope: aMetaLevelScopeClass
]

{ #category : #initialization }
ClyClassBrowserMode >> initialize [
	super initialize.
	metaLevelScope := ClyInstanceSideScope 
]

{ #category : #initialization }
ClyClassBrowserMode >> initializeFor: aBrowser [

	browser := aBrowser.
	metaLevelScope := ClyInstanceSideScope.
	methodGroupQuery := self emptyMethodGroupQueryFor: aBrowser
]

{ #category : #initialization }
ClyClassBrowserMode >> initializeFromMode: aBrowserMode [
	browser := aBrowserMode.
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

{ #category : #initialization }
ClyClassBrowserMode >> restrictMethodVisibilityBy: aClassScope [

	classScopeForMethods := classScopeForMethods restrictedBy: aClassScope
]

{ #category : #'current scopes' }
ClyClassBrowserMode >> setUpDefaultMethodVisibility [
	
	ClyMethodVisibilityLevel allSubclassesDo: [ :each | 
		(each isDefault and: (each canBeAppliedForClasses: browser classSelection items))
			ifTrue: [^classScopeForMethods := each extendClassScope: classScopeForMethods ]]
]

{ #category : #initialization }
ClyClassBrowserMode >> setUpForSelectedClasses [
	classScopeForMethods := 	browser classSelection asItemsScope: metaLevelScope.
	self setUpDefaultMethodVisibility
]

{ #category : #initialization }
ClyClassBrowserMode >> setUpNewMetaLevelScope: aMetaLevelScopeClass [
	metaLevelScope := aMetaLevelScopeClass.
	classScopeForMethods := classScopeForMethods withMetaLevel: metaLevelScope.
	methodGroupQuery := methodGroupQuery withMetaLevelScope: metaLevelScope
]

{ #category : #converting }
ClyClassBrowserMode >> switchToMethodGroups [
	self subclassResponsibility 
]

{ #category : #converting }
ClyClassBrowserMode >> switchToVariables [
	self subclassResponsibility 
]

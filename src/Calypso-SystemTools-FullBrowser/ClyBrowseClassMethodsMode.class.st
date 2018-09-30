Class {
	#name : #ClyBrowseClassMethodsMode,
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
ClyBrowseClassMethodsMode class >> initialFor: aBrowser [

	^self new 
		initializeFor: aBrowser
]

{ #category : #'instance creation' }
ClyBrowseClassMethodsMode class >> of: aBrowser [

	^self new 
		browser: aBrowser;
		setUpForSelectedClasses
]

{ #category : #'instance creation' }
ClyBrowseClassMethodsMode class >> switchedFrom: anotherBrowserMode [

	^(self initialFor: anotherBrowserMode browser)
		initializeFromMode: anotherBrowserMode
]

{ #category : #'current queries' }
ClyBrowseClassMethodsMode >> allMethodQuery [
	^ClyAllMethods sortedFrom: classScopeForMethods
]

{ #category : #accessing }
ClyBrowseClassMethodsMode >> browser [
	^ browser
]

{ #category : #accessing }
ClyBrowseClassMethodsMode >> browser: anObject [
	browser := anObject
]

{ #category : #'current scopes' }
ClyBrowseClassMethodsMode >> classScopeForMethods [
	^classScopeForMethods 
]

{ #category : #'current scopes' }
ClyBrowseClassMethodsMode >> currentSideOfClass: aClass [
	^metaLevelScope metaLevelOf: aClass
]

{ #category : #initialization }
ClyBrowseClassMethodsMode >> emptyMethodGroupQueryFor: aBrowser [ 
	self subclassResponsibility 
]

{ #category : #converting }
ClyBrowseClassMethodsMode >> forMethodVisibilityRestrictedBy: aClassScope [

	^self copy
		restrictMethodVisibilityBy: aClassScope
]

{ #category : #converting }
ClyBrowseClassMethodsMode >> forNewClassSelection [
	^self copy
		setUpForSelectedClasses 
]

{ #category : #converting }
ClyBrowseClassMethodsMode >> forNewMetaLevelScope: aMetaLevelScopeClass [

	metaLevelScope = aMetaLevelScopeClass ifTrue: [ ^self ].
	
	^self copy 
		setUpNewMetaLevelScope: aMetaLevelScopeClass
]

{ #category : #initialization }
ClyBrowseClassMethodsMode >> initialize [
	super initialize.
	metaLevelScope := ClyInstanceSideScope 
]

{ #category : #initialization }
ClyBrowseClassMethodsMode >> initializeFor: aBrowser [

	browser := aBrowser.
	metaLevelScope := ClyInstanceSideScope.
	methodGroupQuery := self emptyMethodGroupQueryFor: aBrowser
]

{ #category : #initialization }
ClyBrowseClassMethodsMode >> initializeFromMode: aBrowserMode [
	browser := aBrowserMode.
	metaLevelScope := aBrowserMode metaLevelScope.
	classScopeForMethods := aBrowserMode classScopeForMethods
]

{ #category : #testing }
ClyBrowseClassMethodsMode >> isClassSideMetaLevel [

	^metaLevelScope = ClyClassSideScope
]

{ #category : #testing }
ClyBrowseClassMethodsMode >> isInstanceSideMetaLevel [

	^metaLevelScope = ClyInstanceSideScope
]

{ #category : #accessing }
ClyBrowseClassMethodsMode >> metaLevelScope [
	^ metaLevelScope
]

{ #category : #accessing }
ClyBrowseClassMethodsMode >> metaLevelScope: anObject [
	metaLevelScope := anObject
]

{ #category : #accessing }
ClyBrowseClassMethodsMode >> methodGroupQuery [
	^ methodGroupQuery
]

{ #category : #accessing }
ClyBrowseClassMethodsMode >> methodGroupQuery: anObject [
	methodGroupQuery := anObject
]

{ #category : #initialization }
ClyBrowseClassMethodsMode >> restrictMethodVisibilityBy: aClassScope [

	classScopeForMethods := classScopeForMethods restrictedBy: aClassScope
]

{ #category : #'current scopes' }
ClyBrowseClassMethodsMode >> setUpDefaultMethodVisibility [
	
	ClyMethodVisibilityLevel allSubclassesDo: [ :each | 
		(each isDefault and: (each canBeAppliedForClasses: browser classSelection items))
			ifTrue: [^classScopeForMethods := each extendClassScope: classScopeForMethods ]]
]

{ #category : #initialization }
ClyBrowseClassMethodsMode >> setUpForSelectedClasses [
	classScopeForMethods := 	browser classSelection asItemsScope: metaLevelScope.
	self setUpDefaultMethodVisibility
]

{ #category : #initialization }
ClyBrowseClassMethodsMode >> setUpNewMetaLevelScope: aMetaLevelScopeClass [
	metaLevelScope := aMetaLevelScopeClass.
	classScopeForMethods := classScopeForMethods withMetaLevel: metaLevelScope.
	methodGroupQuery := methodGroupQuery withMetaLevelScope: metaLevelScope
]

{ #category : #converting }
ClyBrowseClassMethodsMode >> switchToMethodGroups [
	self subclassResponsibility 
]

{ #category : #converting }
ClyBrowseClassMethodsMode >> switchToVariables [
	self subclassResponsibility 
]

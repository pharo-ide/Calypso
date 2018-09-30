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
ClyBrowseClassMethodsMode class >> switchedFrom: anotherBrowserMode [

	^(self initialFor: anotherBrowserMode browser)
		initializeFromMode: anotherBrowserMode
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

{ #category : #'current queries' }
ClyBrowseClassMethodsMode >> currentMethodQuery [
	^ClyAllMethods sortedFrom: classScopeForMethods
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

	^(self class initialFor: browser)
		metaLevelScope: metaLevelScope;
		methodGroupQuery: (methodGroupQuery restrictedByScope: aClassScope)
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
ClyBrowseClassMethodsMode >> initializeFor: aBrowser [

	browser := aBrowser.
	metaLevelScope := ClyInstanceSideScope.
	methodGroupQuery := self emptyMethodGroupQueryFor: aBrowser
]

{ #category : #initialization }
ClyBrowseClassMethodsMode >> initializeFromMode: aBrowserMode [
	self subclassResponsibility 
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

	classScopeForMethods := classScopeForMethods withMetaLevelScope: aMetaLevelScopeClass.
	methodGroupQuery := methodGroupQuery withMetaLevelScope: aMetaLevelScopeClass
]

{ #category : #converting }
ClyBrowseClassMethodsMode >> switchToMethodGroups [
	self subclassResponsibility 
]

{ #category : #converting }
ClyBrowseClassMethodsMode >> switchToVariables [
	self subclassResponsibility 
]

{ #category : #converting }
ClyBrowseClassMethodsMode >> withMetaLevelScope: aMetaLevelScopeClass [

	metaLevelScope = aMetaLevelScopeClass ifTrue: [ ^self ].
	
	^(self class initialFor: browser) 
		metaLevelScope: aMetaLevelScopeClass; 
		methodGroupQuery: (methodGroupQuery withMetaLevelScope: aMetaLevelScopeClass)
]

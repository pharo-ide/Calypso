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
	| currentClassScope |
	currentClassScope := methodGroupQuery scope asScope: metaLevelScope.
	
	^self extendClassScopeForMethods: currentClassScope
]

{ #category : #'current queries' }
ClyBrowseClassMethodsMode >> currentMethodQuery [
	^ClyAllMethods sortedFrom: self classScopeForMethods
]

{ #category : #'current scopes' }
ClyBrowseClassMethodsMode >> currentSideOfClass: aClass [
	^metaLevelScope metaLevelOf: aClass
]

{ #category : #'current scopes' }
ClyBrowseClassMethodsMode >> defaultClassScopeForMethods [

	| selectedClassScope |
	selectedClassScope := browser classSelection asItemsScope: metaLevelScope.
	
	^self extendClassScopeForMethods: selectedClassScope
]

{ #category : #converting }
ClyBrowseClassMethodsMode >> defaultForSelectedClasses [
	^(self class initialFor: browser)
		metaLevelScope: metaLevelScope;
		methodGroupQuery: methodGroupQuery;
		setUpForSelectedClasses 
]

{ #category : #initialization }
ClyBrowseClassMethodsMode >> emptyMethodGroupQueryFor: aBrowser [ 
	self subclassResponsibility 
]

{ #category : #'current scopes' }
ClyBrowseClassMethodsMode >> extendClassScope: aClassScope forMethodsFrom: classSelection [
	| resultScope |
	resultScope := aClassScope.
	
	ClyMethodVisibilityLevel allSubclassesDo: [ :each | 
		(each isDefault and: (each canBeAppliedForClasses: classSelection items))
			ifTrue: [resultScope := each extendClassScope: resultScope ]].
	
	^resultScope
]

{ #category : #'current scopes' }
ClyBrowseClassMethodsMode >> extendClassScopeForMethods: aClassScope [
	| resultScope |
	resultScope := aClassScope.
	
	ClyMethodVisibilityLevel allSubclassesDo: [ :each | 
		(each isDefault and: (each canBeAppliedForClasses: browser classSelection items))
			ifTrue: [resultScope := each extendClassScope: resultScope ]].
	
	^resultScope
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

{ #category : #initialization }
ClyBrowseClassMethodsMode >> setUpForSelectedClasses [

	self subclassResponsibility 
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

{ #category : #converting }
ClyBrowseClassMethodsMode >> withRestrictMethodVisibilityBy: aClassScope [

	^(self class initialFor: browser)
		metaLevelScope: metaLevelScope;
		methodGroupQuery: (methodGroupQuery restrictedByScope: aClassScope)
]

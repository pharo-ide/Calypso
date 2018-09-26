Class {
	#name : #ClyFullBrowserMode,
	#superclass : #Object,
	#instVars : [
		'metaLevelScope',
		'methodGroupQuery',
		'browser'
	],
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #'instance creation' }
ClyFullBrowserMode class >> initialFor: aBrowser [

	^self new 
		initializeFor: aBrowser
]

{ #category : #'instance creation' }
ClyFullBrowserMode class >> switchedFrom: anotherBrowserMode [

	^(self initialFor: anotherBrowserMode browser)
		initializeFromMode: anotherBrowserMode
]

{ #category : #accessing }
ClyFullBrowserMode >> browser [
	^ browser
]

{ #category : #accessing }
ClyFullBrowserMode >> browser: anObject [
	browser := anObject
]

{ #category : #'current scopes' }
ClyFullBrowserMode >> classScopeForMethods [
	| currentClassScope |
	currentClassScope := methodGroupQuery scope asScope: metaLevelScope.
	
	^self extendClassScopeForMethods: currentClassScope
]

{ #category : #'current scopes' }
ClyFullBrowserMode >> defaultClassScopeForMethods [

	| selectedClassScope |
	selectedClassScope := browser classSelection asItemsScope: metaLevelScope.
	
	^self extendClassScopeForMethods: selectedClassScope
]

{ #category : #converting }
ClyFullBrowserMode >> defaultForSelectedClasses [
	^(self class initialFor: browser)
		metaLevelScope: metaLevelScope;
		methodGroupQuery: methodGroupQuery;
		initializeForSelectedClasses 
]

{ #category : #initialization }
ClyFullBrowserMode >> emptyMethodGroupQueryFor: aBrowser [ 
	self subclassResponsibility 
]

{ #category : #'current scopes' }
ClyFullBrowserMode >> extendClassScopeForMethods: aClassScope [
	| resultScope |
	resultScope := aClassScope.
	
	ClyMethodVisibilityLevel allSubclassesDo: [ :each | 
		(each isDefault and: (each canBeAppliedForClasses: browser classSelection items))
			ifTrue: [resultScope := each extendClassScope: resultScope ]].
	
	^resultScope
]

{ #category : #initialization }
ClyFullBrowserMode >> initializeFor: aBrowser [

	browser := aBrowser.
	metaLevelScope := ClyInstanceSideScope.
	methodGroupQuery := self emptyMethodGroupQueryFor: aBrowser
]

{ #category : #initialization }
ClyFullBrowserMode >> initializeForSelectedClasses [

	self subclassResponsibility 
]

{ #category : #initialization }
ClyFullBrowserMode >> initializeFromMode: aBrowserMode [
	self subclassResponsibility 
]

{ #category : #accessing }
ClyFullBrowserMode >> metaLevelScope [
	^ metaLevelScope
]

{ #category : #accessing }
ClyFullBrowserMode >> metaLevelScope: anObject [
	metaLevelScope := anObject
]

{ #category : #accessing }
ClyFullBrowserMode >> methodGroupQuery [
	^ methodGroupQuery
]

{ #category : #accessing }
ClyFullBrowserMode >> methodGroupQuery: anObject [
	methodGroupQuery := anObject
]

{ #category : #converting }
ClyFullBrowserMode >> switchToMethodGroups [
	self subclassResponsibility 
]

{ #category : #converting }
ClyFullBrowserMode >> switchToVariables [
	self subclassResponsibility 
]

{ #category : #converting }
ClyFullBrowserMode >> withMetaLevelScope: aMetaLevelScopeClass [

	metaLevelScope = aMetaLevelScopeClass ifTrue: [ ^self ].
	
	^(self class initialFor: browser) 
		metaLevelScope: aMetaLevelScopeClass; 
		methodGroupQuery: (methodGroupQuery withMetaLevelScope: aMetaLevelScopeClass)
]

{ #category : #converting }
ClyFullBrowserMode >> withRestrictMethodVisibilityBy: aClassScope [

	^(self class initialFor: browser)
		metaLevelScope: metaLevelScope;
		methodGroupQuery: (methodGroupQuery restrictedByScope: aClassScope)
]

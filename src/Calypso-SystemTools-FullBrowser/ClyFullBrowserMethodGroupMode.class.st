Class {
	#name : #ClyFullBrowserMethodGroupMode,
	#superclass : #ClyFullBrowserMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #initialization }
ClyFullBrowserMethodGroupMode >> adoptForExtendedClass [
	| extendingPackages extraGroups |
	browser classSelection isEmpty ifTrue: [ ^self ].
	"methodGroupQuery := methodGroupQuery withoutItemsOfType: RPackage." "To remove previous package injection"
	(browser classSelection lastSelectedItem isMarkedWith: ClyExtendedClassTag) ifFalse: [ ^self ].
	
	self adoptMetaLevelForSelectedClass. "it will also ensures method groups mode"
	
	extendingPackages := browser packageSelection actualObjects.
	extraGroups := ClyConstantQuery 
				returning: extendingPackages as: ClyGroupedExtendingPackages new.
	extraGroups := methodGroupQuery scope adoptQuery: extraGroups.
	methodGroupQuery := methodGroupQuery , extraGroups
]

{ #category : #initialization }
ClyFullBrowserMethodGroupMode >> adoptMetaLevelForSelectedClass [
	| selectedClass extendedMetaLevel |
	browser classSelection isEmpty ifTrue: [ ^self ].
	selectedClass := browser classSelection lastSelectedItem.
	(selectedClass isMarkedWith: ClyExtendedClassTag) ifFalse: [ ^self ].
	
	"First we should always switch to method groups because
	only in that mode we can show properly extension methods "
	extendedMetaLevel := selectedClass systemDefinition definingMetaLevelScope.
	extendedMetaLevel = metaLevelScope ifTrue: [ ^self].
	
	"We should switch to the meta level of extended class"
	metaLevelScope := extendedMetaLevel.
	methodGroupQuery := methodGroupQuery withMetaLevelScope: metaLevelScope
]

{ #category : #initialization }
ClyFullBrowserMethodGroupMode >> emptyMethodGroupQueryFor: aBrowser [
	^ClyAllMethodGroups sortedFrom: (metaLevelScope emptyIn: aBrowser navigationEnvironment)
]

{ #category : #initialization }
ClyFullBrowserMethodGroupMode >> initializeForSelectedClasses [
	methodGroupQuery := ClyAllMethodGroups sortedFrom: self classScopeForMethods.
	self adoptForExtendedClass.
	methodGroupQuery := methodGroupQuery restrictedByScope: self defaultClassScopeForMethods
]

{ #category : #initialization }
ClyFullBrowserMethodGroupMode >> initializeFromMode: aBrowserMode [
	metaLevelScope := aBrowserMode metaLevelScope.
	methodGroupQuery := ClyAllMethodGroups sortedFrom: aBrowserMode classScopeForMethods
]

{ #category : #converting }
ClyFullBrowserMethodGroupMode >> switchToMethodGroups [
]

{ #category : #converting }
ClyFullBrowserMethodGroupMode >> switchToVariables [
	^ClyFullBrowserVariableMode switchedFrom: self
]

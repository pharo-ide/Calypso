Class {
	#name : #ClyClassBrowserMethodGroupsMode,
	#superclass : #ClyClassBrowserMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #initialization }
ClyClassBrowserMethodGroupsMode >> adoptForExtendedClass [
	| extendingPackages extraGroups |
	browser classSelection isEmpty ifTrue: [ ^self ].
	(browser classSelection lastSelectedItem isMarkedWith: ClyExtendedClassTag) ifFalse: [ ^self ].

	self adoptMetaLevelForSelectedClass.
	extendingPackages := browser packageSelection actualObjects.
	extraGroups := ClyConstantQuery 
				returning: extendingPackages as: ClyGroupedExtendingPackages new.
	extraGroups := methodGroupQuery scope adoptQuery: extraGroups.
	methodGroupQuery := methodGroupQuery , extraGroups
]

{ #category : #initialization }
ClyClassBrowserMethodGroupsMode >> adoptForExtendedClassFrom: classSelection [
	| extendingPackages extraGroups selectedClassItem |
	classSelection isEmpty ifTrue: [ ^self ].
	selectedClassItem := classSelection lastSelectedItem.
	(selectedClassItem isMarkedWith: ClyExtendedClassTag) ifFalse: [ ^self ].
	
	self adoptMetaLevelForSelectedClass: selectedClassItem.
	
	extendingPackages := browser packageSelection actualObjects.
	extraGroups := ClyConstantQuery 
				returning: extendingPackages as: ClyGroupedExtendingPackages new.
	extraGroups := methodGroupQuery scope adoptQuery: extraGroups.
	methodGroupQuery := methodGroupQuery , extraGroups
]

{ #category : #initialization }
ClyClassBrowserMethodGroupsMode >> adoptMetaLevelForSelectedClass [
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
ClyClassBrowserMethodGroupsMode >> emptyMethodGroupQueryFor: aBrowser [
	^ClyAllMethodGroups sortedFrom: (metaLevelScope emptyIn: aBrowser navigationEnvironment)
]

{ #category : #initialization }
ClyClassBrowserMethodGroupsMode >> initializeFromMode: aBrowserMode [
	metaLevelScope := aBrowserMode metaLevelScope.
	methodGroupQuery := ClyAllMethodGroups sortedFrom: aBrowserMode classScopeForMethods
]

{ #category : #initialization }
ClyClassBrowserMethodGroupsMode >> restrictMethodVisibilityBy: aClassScope [
	super restrictMethodVisibilityBy: aClassScope.

	methodGroupQuery := methodGroupQuery restrictedByScope: aClassScope
]

{ #category : #initialization }
ClyClassBrowserMethodGroupsMode >> setUpForSelectedClasses [
	super setUpForSelectedClasses.
	
	methodGroupQuery := ClyAllMethodGroups sortedFrom: classScopeForMethods.
	self adoptForExtendedClass
]

{ #category : #converting }
ClyClassBrowserMethodGroupsMode >> switchToMethodGroups [
]

{ #category : #converting }
ClyClassBrowserMethodGroupsMode >> switchToVariables [
	^ClyClassBrowserVariablesMode switchedFrom: self
]

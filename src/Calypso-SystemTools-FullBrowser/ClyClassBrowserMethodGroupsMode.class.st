Class {
	#name : #ClyClassBrowserMethodGroupsMode,
	#superclass : #ClyClassBrowserMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #controlling }
ClyClassBrowserMethodGroupsMode >> adoptForExtendedClass [
	| extendingPackages extraGroups |
	browser classSelection isEmpty ifTrue: [ ^self ].
	(browser classSelection lastSelectedItem isMarkedWith: ClyExtendedClassTag) ifFalse: [ ^self ].

	extendingPackages := browser packageSelection actualObjects.
	extraGroups := ClyConstantQuery 
				returning: extendingPackages as: ClyGroupedExtendingPackages new.
	extraGroups := methodGroupQuery scope adoptQuery: extraGroups.
	methodGroupQuery := methodGroupQuery , extraGroups
]

{ #category : #controlling }
ClyClassBrowserMethodGroupsMode >> adoptMetaLevelForExtendedClass [
	| selectedClass extendedMetaLevel |
	browser classSelection isEmpty ifTrue: [ ^self ].
	selectedClass := browser classSelection lastSelectedItem.
	(selectedClass isMarkedWith: ClyExtendedClassTag) ifFalse: [ ^self ].
	
	extendedMetaLevel := selectedClass systemDefinition definingMetaLevelScope.
	extendedMetaLevel = metaLevelScope ifTrue: [ ^self].	
	self setUpNewMetaLevelScope: extendedMetaLevel.
]

{ #category : #controlling }
ClyClassBrowserMethodGroupsMode >> restrictMethodVisibilityBy: aClassScope [
	super restrictMethodVisibilityBy: aClassScope.

	methodGroupQuery := methodGroupQuery restrictedByScope: aClassScope
]

{ #category : #controlling }
ClyClassBrowserMethodGroupsMode >> setUpDefaultMethodGroupQuery [
	
	methodGroupQuery := ClyAllMethodGroups sortedFrom: classScopeForMethods.
	self adoptForExtendedClass
]

{ #category : #controlling }
ClyClassBrowserMethodGroupsMode >> setUpForSelectedClasses [
	super setUpForSelectedClasses.
	
	self adoptMetaLevelForExtendedClass.
]

{ #category : #converting }
ClyClassBrowserMethodGroupsMode >> switchToMethodGroups [
]

{ #category : #converting }
ClyClassBrowserMethodGroupsMode >> switchToVariables [
	^ClyClassBrowserVariablesMode switchedFrom: self
]

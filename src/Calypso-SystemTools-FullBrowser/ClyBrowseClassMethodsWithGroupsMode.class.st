Class {
	#name : #ClyBrowseClassMethodsWithGroupsMode,
	#superclass : #ClyBrowseClassMethodsMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #initialization }
ClyBrowseClassMethodsWithGroupsMode >> adoptForExtendedClass [
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
ClyBrowseClassMethodsWithGroupsMode >> adoptForExtendedClassFrom: classSelection [
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
ClyBrowseClassMethodsWithGroupsMode >> adoptMetaLevelForSelectedClass [
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
ClyBrowseClassMethodsWithGroupsMode >> emptyMethodGroupQueryFor: aBrowser [
	^ClyAllMethodGroups sortedFrom: (metaLevelScope emptyIn: aBrowser navigationEnvironment)
]

{ #category : #initialization }
ClyBrowseClassMethodsWithGroupsMode >> initializeFromMode: aBrowserMode [
	metaLevelScope := aBrowserMode metaLevelScope.
	methodGroupQuery := ClyAllMethodGroups sortedFrom: aBrowserMode classScopeForMethods
]

{ #category : #initialization }
ClyBrowseClassMethodsWithGroupsMode >> setUpForSelectedClasses [
	classScopeForMethods := 	browser classSelection asItemsScope: metaLevelScope.
	classScopeForMethods := self extendClassScopeForMethods: classScopeForMethods.
	
	methodGroupQuery := ClyAllMethodGroups sortedFrom: classScopeForMethods.
	self adoptForExtendedClass
]

{ #category : #converting }
ClyBrowseClassMethodsWithGroupsMode >> switchToMethodGroups [
]

{ #category : #converting }
ClyBrowseClassMethodsWithGroupsMode >> switchToVariables [
	^ClyBrowseClassMethodsWithVariablesMode switchedFrom: self
]

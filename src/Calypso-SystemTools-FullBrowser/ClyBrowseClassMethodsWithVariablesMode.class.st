Class {
	#name : #ClyBrowseClassMethodsWithVariablesMode,
	#superclass : #ClyBrowseClassMethodsMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #initialization }
ClyBrowseClassMethodsWithVariablesMode >> emptyMethodGroupQueryFor: aBrowser [
	^ClyAllVariables 
		from: (metaLevelScope emptyIn: aBrowser navigationEnvironment)
		as: ClyGroupedInstanceVariables withDefaultHierarchy
]

{ #category : #converting }
ClyBrowseClassMethodsWithVariablesMode >> forNewClassSelection [
	browser classSelection isEmpty ifTrue: [ ^super forNewClassSelection ].
	(browser classSelection lastSelectedItem isMarkedWith: ClyExtendedClassTag) ifFalse: [
		 ^self switchToMethodGroups; setUpForSelectedClasses ].
	
	^super forNewClassSelection
]

{ #category : #initialization }
ClyBrowseClassMethodsWithVariablesMode >> initializeFromMode: aBrowserMode [
	| classScope |
	metaLevelScope := aBrowserMode metaLevelScope.
	classScope := aBrowserMode classScopeForMethods.
	methodGroupQuery := ClyAllVariables 
			from: classScope, classScope asInheritedScope 
			as: ClyGroupedInstanceVariables withDefaultHierarchy
]

{ #category : #initialization }
ClyBrowseClassMethodsWithVariablesMode >> setUpForSelectedClasses [
	| classScope |
	super setUpForSelectedClasses.
	
	classScope := 	browser classSelection asItemsScope: metaLevelScope.	
	methodGroupQuery := ClyAllVariables 
			from: classScope, classScope asInheritedScope 
			as: ClyGroupedInstanceVariables withDefaultHierarchy
]

{ #category : #converting }
ClyBrowseClassMethodsWithVariablesMode >> switchToMethodGroups [
	^ClyBrowseClassMethodsWithGroupsMode switchedFrom: self
]

{ #category : #converting }
ClyBrowseClassMethodsWithVariablesMode >> switchToVariables [
]

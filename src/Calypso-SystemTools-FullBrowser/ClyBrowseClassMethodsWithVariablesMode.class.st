Class {
	#name : #ClyBrowseClassMethodsWithVariablesMode,
	#superclass : #ClyBrowseClassMethodsMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #initialization }
ClyBrowseClassMethodsWithVariablesMode >> emptyMethodGroupQueryFor: aBrowser [
	^ClyAllVariables 
		from: (metaLevelScope emptyIn: aBrowser navigationEnvironment)
		as: (ClyGroupedInstanceVariables withDefaultHierarchyAndMethodsFrom: classScopeForMethods)
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
	super initializeFromMode: aBrowserMode.
	classScope := aBrowserMode classScopeForMethods.
	methodGroupQuery := ClyAllVariables 
			from: classScope, classScope asInheritedScope 
			as: (ClyGroupedInstanceVariables withDefaultHierarchyAndMethodsFrom: classScopeForMethods)
]

{ #category : #initialization }
ClyBrowseClassMethodsWithVariablesMode >> setUpForSelectedClasses [
	| classScope |
	super setUpForSelectedClasses.
	
	classScope := browser classSelection asItemsScope: metaLevelScope.	
	methodGroupQuery := ClyAllVariables 
			from: classScope, classScope asInheritedScope 
			as: (ClyGroupedInstanceVariables withDefaultHierarchyAndMethodsFrom: classScopeForMethods)
]

{ #category : #converting }
ClyBrowseClassMethodsWithVariablesMode >> switchToMethodGroups [
	^ClyBrowseClassMethodsWithGroupsMode switchedFrom: self
]

{ #category : #converting }
ClyBrowseClassMethodsWithVariablesMode >> switchToVariables [
]

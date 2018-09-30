Class {
	#name : #ClyClassBrowserVariablesMode,
	#superclass : #ClyClassBrowserMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #initialization }
ClyClassBrowserVariablesMode >> initializeFromMode: aBrowserMode [
	| classScope |
	super initializeFromMode: aBrowserMode.
	classScope := aBrowserMode classScopeForMethods.
	methodGroupQuery := ClyAllVariables 
			from: classScope, classScope asInheritedScope 
			as: (ClyGroupedInstanceVariables withDefaultHierarchyAndMethodsFrom: classScopeForMethods)
]

{ #category : #initialization }
ClyClassBrowserVariablesMode >> setUpForSelectedClasses [
	| classScope |
	super setUpForSelectedClasses.
	
	classScope := browser classSelection asItemsScope: metaLevelScope.	
	methodGroupQuery := ClyAllVariables 
			from: classScope, classScope asInheritedScope 
			as: (ClyGroupedInstanceVariables withDefaultHierarchyAndMethodsFrom: classScopeForMethods)
]

{ #category : #converting }
ClyClassBrowserVariablesMode >> switchToMethodGroups [
	^ClyClassBrowserMethodGroupsMode switchedFrom: self
]

{ #category : #converting }
ClyClassBrowserVariablesMode >> switchToNewClassSelection [
	(browser classSelection isEmpty not and: [ 
		browser classSelection lastSelectedItem isMarkedWith: ClyExtendedClassTag]) 
			ifTrue: [ ^self switchToMethodGroups setUpForSelectedClasses ].
	
	^super switchToNewClassSelection
]

{ #category : #converting }
ClyClassBrowserVariablesMode >> switchToVariables [
]

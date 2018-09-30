Class {
	#name : #ClyClassBrowserVariablesMode,
	#superclass : #ClyClassBrowserMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #initialization }
ClyClassBrowserVariablesMode >> emptyMethodGroupQueryFor: aBrowser [
	^ClyAllVariables 
		from: (metaLevelScope emptyIn: aBrowser navigationEnvironment)
		as: (ClyGroupedInstanceVariables withDefaultHierarchyAndMethodsFrom: classScopeForMethods)
]

{ #category : #converting }
ClyClassBrowserVariablesMode >> forNewClassSelection [
	browser classSelection isEmpty ifTrue: [ ^super forNewClassSelection ].
	(browser classSelection lastSelectedItem isMarkedWith: ClyExtendedClassTag) ifFalse: [
		 ^self switchToMethodGroups; setUpForSelectedClasses ].
	
	^super forNewClassSelection
]

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
ClyClassBrowserVariablesMode >> switchToVariables [
]

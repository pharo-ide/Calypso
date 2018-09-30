Class {
	#name : #ClyClassBrowserVariablesMode,
	#superclass : #ClyClassBrowserMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #controlling }
ClyClassBrowserVariablesMode >> restrictMethodVisibilityBy: aClassScope [
	super restrictMethodVisibilityBy: aClassScope.

	methodGroupQuery := methodGroupQuery restrictedByScope: aClassScope
]

{ #category : #controlling }
ClyClassBrowserVariablesMode >> setUpDefaultMethodGroupQuery [
	
	| classScope |
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

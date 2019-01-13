"
I represent browser when it shows variables
"
Class {
	#name : #ClyClassBrowserVariablesMode,
	#superclass : #ClyClassBrowserMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #controlling }
ClyClassBrowserVariablesMode >> setUpDefaultMethodGroupQuery [
	
	| classScope |
	classScope := browser classSelection asItemsScope: metaLevelScope.	
	methodGroupQuery := ClyAllVariablesQuery 
			from: classScope, classScope asInheritedScope 
			as: (ClyGroupedInstanceVariables withDefaultHierarchyAndMethodsFrom: classScopeForMethods)
]

{ #category : #controlling }
ClyClassBrowserVariablesMode >> setUpMethodVisibility: aClassScope [
	super setUpMethodVisibility: aClassScope.
	
	methodGroupQuery := methodGroupQuery 
		withResult: (ClyGroupedInstanceVariables withDefaultHierarchyAndMethodsFrom: classScopeForMethods)
]

{ #category : #converting }
ClyClassBrowserVariablesMode >> switchToMethodGroups [
	^ClyClassBrowserMethodGroupsMode switchedFrom: self
]

{ #category : #converting }
ClyClassBrowserVariablesMode >> switchToNewClassSelection [
	browser isExtendedClassSelected ifTrue: [ 
		^self switchToMethodGroups setUpForSelectedClasses ].
	
	^super switchToNewClassSelection
]

{ #category : #converting }
ClyClassBrowserVariablesMode >> switchToVariables [
]

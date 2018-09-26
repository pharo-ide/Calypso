Class {
	#name : #ClyFullBrowserVariableMode,
	#superclass : #ClyFullBrowserMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #initialization }
ClyFullBrowserVariableMode >> emptyMethodGroupQueryFor: aBrowser [
	^ClyAllVariables 
		from: (metaLevelScope emptyIn: aBrowser navigationEnvironment)
		as: ClyGroupedInstanceVariables withDefaultHierarchy
]

{ #category : #initialization }
ClyFullBrowserVariableMode >> initializeFromMode: aBrowserMode [
	| classScope |
	metaLevelScope := aBrowserMode metaLevelScope.
	classScope := aBrowserMode classScopeForMethods.
	methodGroupQuery := ClyAllVariables 
			from: classScope, classScope asInheritedScope 
			as: ClyGroupedInstanceVariables withDefaultHierarchy
]

{ #category : #converting }
ClyFullBrowserVariableMode >> switchToMethodGroups [
	^ClyFullBrowserMethodGroupMode switchedFrom: self
]

{ #category : #converting }
ClyFullBrowserVariableMode >> switchToVariables [
]

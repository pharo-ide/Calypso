Class {
	#name : #ClyFullBrowserMethodGroupMode,
	#superclass : #ClyFullBrowserMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #initialization }
ClyFullBrowserMethodGroupMode >> emptyMethodGroupQueryFor: aBrowser [
	^ClyAllMethodGroups sortedFrom: (metaLevelScope emptyIn: aBrowser navigationEnvironment)
]

{ #category : #initialization }
ClyFullBrowserMethodGroupMode >> initializeFromMode: aBrowserMode [
	metaLevelScope := aBrowserMode metaLevelScope.
	methodGroupQuery := ClyAllMethodGroups sortedFrom: aBrowserMode classScopeForMethods
]

{ #category : #converting }
ClyFullBrowserMethodGroupMode >> switchToMethodGroups [
]

{ #category : #converting }
ClyFullBrowserMethodGroupMode >> switchToVariables [
	^ClyFullBrowserVariableMode switchedFrom: self
]

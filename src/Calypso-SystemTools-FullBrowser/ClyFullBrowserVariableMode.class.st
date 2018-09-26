Class {
	#name : #ClyFullBrowserVariableMode,
	#superclass : #ClyFullBrowserMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #converting }
ClyFullBrowserVariableMode >> defaultForSelectedClasses [
	browser classSelection isEmpty ifTrue: [ ^super defaultForSelectedClasses ].
	(browser classSelection lastSelectedItem isMarkedWith: ClyExtendedClassTag) ifFalse: [
		 ^self switchToMethodGroups; initializeForSelectedClasses ].
	
	^super defaultForSelectedClasses
]

{ #category : #initialization }
ClyFullBrowserVariableMode >> emptyMethodGroupQueryFor: aBrowser [
	^ClyAllVariables 
		from: (metaLevelScope emptyIn: aBrowser navigationEnvironment)
		as: ClyGroupedInstanceVariables withDefaultHierarchy
]

{ #category : #initialization }
ClyFullBrowserVariableMode >> initializeForSelectedClasses [
	| classScope |
	classScope := self classScopeForMethods.
	methodGroupQuery := ClyAllVariables 
			from: classScope, classScope asInheritedScope 
			as: ClyGroupedInstanceVariables withDefaultHierarchy.
	methodGroupQuery := methodGroupQuery restrictedByScope: self defaultClassScopeForMethods
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

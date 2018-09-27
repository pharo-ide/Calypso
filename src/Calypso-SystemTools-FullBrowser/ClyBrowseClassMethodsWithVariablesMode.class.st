Class {
	#name : #ClyBrowseClassMethodsWithVariablesMode,
	#superclass : #ClyBrowseClassMethodsMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #converting }
ClyBrowseClassMethodsWithVariablesMode >> defaultForSelectedClasses [
	browser classSelection isEmpty ifTrue: [ ^super defaultForSelectedClasses ].
	(browser classSelection lastSelectedItem isMarkedWith: ClyExtendedClassTag) ifFalse: [
		 ^self switchToMethodGroups; setUpForSelectedClasses ].
	
	^super defaultForSelectedClasses
]

{ #category : #initialization }
ClyBrowseClassMethodsWithVariablesMode >> emptyMethodGroupQueryFor: aBrowser [
	^ClyAllVariables 
		from: (metaLevelScope emptyIn: aBrowser navigationEnvironment)
		as: ClyGroupedInstanceVariables withDefaultHierarchy
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
	classScope := self classScopeForMethods.
	methodGroupQuery := ClyAllVariables 
			from: classScope, classScope asInheritedScope 
			as: ClyGroupedInstanceVariables withDefaultHierarchy.
	methodGroupQuery := methodGroupQuery restrictedByScope: self defaultClassScopeForMethods
]

{ #category : #converting }
ClyBrowseClassMethodsWithVariablesMode >> switchToMethodGroups [
	^ClyBrowseClassMethodsWithGroupsMode switchedFrom: self
]

{ #category : #converting }
ClyBrowseClassMethodsWithVariablesMode >> switchToVariables [
]

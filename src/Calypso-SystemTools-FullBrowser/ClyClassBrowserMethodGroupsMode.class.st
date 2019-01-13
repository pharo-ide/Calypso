"
I represent browser when it shows method groups (protocols).

I implement special scenario for browsing extended classes.
When user selects extended class I add extra method group for selected packages to see extensions instead of all methods.
"
Class {
	#name : #ClyClassBrowserMethodGroupsMode,
	#superclass : #ClyClassBrowserMode,
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #controlling }
ClyClassBrowserMethodGroupsMode >> adoptForExtendedClass [
	| extendingPackages extraGroups |
	browser isExtendedClassSelected ifFalse: [ ^self ].

	extendingPackages := browser packageSelection actualObjects.
	extraGroups := ClyConstantQuery 
				returning: extendingPackages as: ClyGroupedExtendingPackages new.
	extraGroups := methodGroupQuery scope adoptQuery: extraGroups.
	methodGroupQuery := methodGroupQuery , extraGroups
]

{ #category : #controlling }
ClyClassBrowserMethodGroupsMode >> adoptMetaLevelForExtendedClass [
	| extendedMetaLevel selectedClassItem |
	browser isExtendedClassSelected ifFalse: [ ^self ].
	
	selectedClassItem := browser classSelection lastSelectedItem.
	extendedMetaLevel :=  selectedClassItem systemDefinition definingMetaLevelScope.
	extendedMetaLevel = metaLevelScope ifTrue: [ ^self].	
	self setUpNewMetaLevelScope: extendedMetaLevel.
]

{ #category : #controlling }
ClyClassBrowserMethodGroupsMode >> setUpDefaultMethodGroupQuery [
	
	methodGroupQuery := ClyAllMethodGroupsQuery sortedFrom: classScopeForMethods.
	self adoptForExtendedClass
]

{ #category : #controlling }
ClyClassBrowserMethodGroupsMode >> setUpForSelectedClasses [
	super setUpForSelectedClasses.
	
	self adoptMetaLevelForExtendedClass.
]

{ #category : #controlling }
ClyClassBrowserMethodGroupsMode >> setUpMethodVisibility: aClassScope [
	super setUpMethodVisibility: aClassScope.

	methodGroupQuery := methodGroupQuery withScope: aClassScope
]

{ #category : #converting }
ClyClassBrowserMethodGroupsMode >> switchToMethodGroups [
]

{ #category : #converting }
ClyClassBrowserMethodGroupsMode >> switchToVariables [
	^ClyClassBrowserVariablesMode switchedFrom: self
]

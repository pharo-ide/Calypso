Class {
	#name : #ClyMethodContextDefinitionProperty,
	#superclass : #ClyItemDefinitionProperty,
	#instVars : [
		'receiverItem',
		'closureItem',
		'definitionMethodItem'
	],
	#category : 'Calypso-ProcessQueries'
}

{ #category : #'instance creation' }
ClyMethodContextDefinitionProperty class >> of: aContext [

	^self new
		definitionMethodItem: (ClyBrowserItem named: aContext selector with: aContext method);
		receiverItem: (ClyBrowserItem named: aContext receiver class name with: aContext receiver);
		closureItem: (aContext closure ifNotNil: [:c | ClyBrowserItem named: c printString with: c]) 
]

{ #category : #accessing }
ClyMethodContextDefinitionProperty >> closureItem [
	^ closureItem
]

{ #category : #accessing }
ClyMethodContextDefinitionProperty >> closureItem: anObject [
	closureItem := anObject
]

{ #category : #accessing }
ClyMethodContextDefinitionProperty >> definitionMethod [
	^self definitionMethodItem actualObject
]

{ #category : #accessing }
ClyMethodContextDefinitionProperty >> definitionMethodItem [
	^definitionMethodItem
]

{ #category : #accessing }
ClyMethodContextDefinitionProperty >> definitionMethodItem: anEnvironmentItem [
	definitionMethodItem := anEnvironmentItem
]

{ #category : #printing }
ClyMethodContextDefinitionProperty >> printDefinition [

	^receiverItem name, '>>', definitionMethodItem name
]

{ #category : #accessing }
ClyMethodContextDefinitionProperty >> receiverItem [
	^ receiverItem
]

{ #category : #accessing }
ClyMethodContextDefinitionProperty >> receiverItem: anObject [
	receiverItem := anObject
]

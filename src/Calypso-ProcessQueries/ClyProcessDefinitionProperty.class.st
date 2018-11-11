Class {
	#name : #ClyProcessDefinitionProperty,
	#superclass : #ClyItemDefinitionProperty,
	#instVars : [
		'priority',
		'activeContextItem'
	],
	#category : 'Calypso-ProcessQueries'
}

{ #category : #'instance creation' }
ClyProcessDefinitionProperty class >> of: aProcess [
	| context |
	context := aProcess suspendedContext.
	context ifNil: [ 
		aProcess == Processor activeProcess 
			ifTrue: [ context := thisContext sender ] 
			ifFalse: [ self error: 'should not happen' ] ].
		
	^self new
		activeContext: context;
		priority: aProcess priority
]

{ #category : #accessing }
ClyProcessDefinitionProperty >> activeContext [

	^activeContextItem actualObject
]

{ #category : #accessing }
ClyProcessDefinitionProperty >> activeContext: aContext [

	activeContextItem := ClyBrowserItem named: aContext selector with: aContext
]

{ #category : #accessing }
ClyProcessDefinitionProperty >> activeContextItem [
	^ activeContextItem
]

{ #category : #accessing }
ClyProcessDefinitionProperty >> activeContextItem: anObject [
	activeContextItem := anObject
]

{ #category : #printing }
ClyProcessDefinitionProperty >> printProcessContext [
	| contextDefinition |
	contextDefinition := activeContextItem getProperty: ClyMethodContextDefinitionProperty.
	^contextDefinition printDefinition
]

{ #category : #accessing }
ClyProcessDefinitionProperty >> priority [
	^ priority
]

{ #category : #accessing }
ClyProcessDefinitionProperty >> priority: anObject [
	priority := anObject
]

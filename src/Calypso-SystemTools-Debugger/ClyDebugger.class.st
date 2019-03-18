Class {
	#name : #ClyDebugger,
	#superclass : #ClyBrowserMorph,
	#instVars : [
		'stackView'
	],
	#category : 'Calypso-SystemTools-Debugger'
}

{ #category : #opening }
ClyDebugger class >> openOn: aProcess [

	^self openOn: aProcess from: ClyNavigationEnvironment currentImage
]

{ #category : #opening }
ClyDebugger class >> openOn: aProcess from: aNavigationEnvironment [

	^(self on: aNavigationEnvironment)
		showStackOf: aProcess;
		open
]

{ #category : #accessing }
ClyDebugger >> chooseClassForEditorOfMethod: aMethod [
	^aMethod origin
]

{ #category : #accessing }
ClyDebugger >> contextSelection [
	^stackView selection
]

{ #category : #initialization }
ClyDebugger >> initializeNavigationViews [
	stackView := self newNavigationView.
	stackView allowsDeselection: false.	
	stackView mainColumn 
		width: 250;
		displayItemPropertyBy: [:contextItem | self printReceiverOf: contextItem].
	(stackView addColumn: #method) 
		width: 400;
		displayItemName.
	(stackView addColumn: #details) 
		width: 50;
		displayItemPropertyBy: [:contextItem | self printContextDetailsOf: contextItem]
		
]

{ #category : #testing }
ClyDebugger >> isProcessContextSelected: aMethodContext [

	^self contextSelection includesActualObject: aMethodContext 	
]

{ #category : #updating }
ClyDebugger >> newWindowTitle [
	^'Debugger'
]

{ #category : #initialization }
ClyDebugger >> printContextDetailsOf: contextItem [
	| definition |
	definition := contextItem getProperty: ClyMethodContextDefinitionProperty.
	^definition closureItem 
		ifNil: [ '' ] 
		ifNotNil: [ :closureItem | closureItem name ]
]

{ #category : #initialization }
ClyDebugger >> printReceiverOf: contextItem [
	| definition |
	definition := contextItem getProperty: ClyMethodContextDefinitionProperty.
	^definition receiverItem name
]

{ #category : #navigation }
ClyDebugger >> selectMethod: aMethod [
	"debugger do not allow method selection"
]

{ #category : #navigation }
ClyDebugger >> showStackOf: aProcess [
	| stackQuery |
	stackQuery := ClyActiveContextOfProcessesQuery 
		from: (ClyProcessScope of: aProcess in: navigationEnvironment)
		as: ClyProcessStack new.
		
	stackView showQuery: stackQuery
]

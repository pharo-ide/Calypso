Class {
	#name : #ClyProcessBrowser,
	#superclass : #ClyBrowserMorph,
	#instVars : [
		'processView',
		'stackView'
	],
	#category : 'Calypso-SystemTools-ProcessBrowser'
}

{ #category : #opening }
ClyProcessBrowser class >> open [
	<script>
	^self openOn: ClyNavigationEnvironment currentImage
]

{ #category : #opening }
ClyProcessBrowser class >> openOn: aNavigationEnvironment [
	^self openOn: aNavigationEnvironment systemScope: aNavigationEnvironment systemScope.

]

{ #category : #opening }
ClyProcessBrowser class >> openOn: aNavigationEnvironment systemScope: aSystemScope [
	| browser |
	browser := self on: aNavigationEnvironment systemScope: aSystemScope.
	browser open.
	^browser
]

{ #category : #accessing }
ClyProcessBrowser >> chooseClassForEditorOfMethod: aMethod [
	^aMethod origin
]

{ #category : #accessing }
ClyProcessBrowser >> chooseClassesForNewMethod: aMethod [
	^ self chooseClassForEditorOfMethod: aMethod
]

{ #category : #accessing }
ClyProcessBrowser >> contextSelection [
	^stackView selection
]

{ #category : #initialization }
ClyProcessBrowser >> initialExtent [
	^ RealEstateAgent standardWindowExtent
]

{ #category : #initialization }
ClyProcessBrowser >> initializeNavigationViews [
	processView := self newNavigationView.
	(processView addColumn: #priority) 
		width: 15;
		displayItemPropertyBy: [:processItem | (self processPriorityOf: processItem) asString].
	processView moveMainColumnAtTheEnd.	
	(processView mainColumn)
		width: 400;
		displayItemPropertyBy: [:processItem | self printProcessPreview: processItem].
	processView requestNavigationBy: #showStackOfProcesses:.
	
	stackView := self newNavigationView.
	stackView allowsDeselection: false.	
	stackView mainColumn 
		width: 200;
		displayItemPropertyBy: [:contextItem | self printReceiverOf: contextItem].
	(stackView addColumn: #method) 
		width: 250;
		displayItemName.
	(stackView addColumn: #details) 
		width: 100;
		displayItemPropertyBy: [:contextItem | self printContextDetailsOf: contextItem]
]

{ #category : #testing }
ClyProcessBrowser >> isProcessContextSelected: aContext [ 
	^self contextSelection includesActualObject: aContext
]

{ #category : #navigation }
ClyProcessBrowser >> navigateSpawnedFullBrowser: aFullBrowser [
	| context |
	context := stackView createSelectionContext.
	
	context isMethodSelected ifTrue: [ 
		aFullBrowser selectMethod: context lastSelectedMethod]
]

{ #category : #'instance creation' }
ClyProcessBrowser >> newWindowTitle [
	^self systemScope isCurrentImage 
		ifTrue: [ 'ProcessBrowser' ]
		ifFalse: [ 'ProcessBrowser' , ' in ', self systemScope description ]
]

{ #category : #navigation }
ClyProcessBrowser >> prepareInitialState [
	
	| query |
	query := ClyAllProcessesQuery from: self systemScope.

	processView showQuery: query
]

{ #category : #initialization }
ClyProcessBrowser >> printContextDetailsOf: contextItem [
	| definition |
	definition := contextItem getProperty: ClyMethodContextDefinitionProperty.
	^definition closureItem 
		ifNil: [ '' ] 
		ifNotNil: [ :closureItem | closureItem name ]
]

{ #category : #initialization }
ClyProcessBrowser >> printCurrentContextOf: processItem [

	| definition |
	definition := processItem getProperty: ClyProcessDefinitionProperty.
	^definition printProcessContext
]

{ #category : #initialization }
ClyProcessBrowser >> printProcessPreview: processItem [

	^processItem name, ': ', (self printCurrentContextOf: processItem)
]

{ #category : #initialization }
ClyProcessBrowser >> printReceiverOf: contextItem [
	| definition |
	definition := contextItem getProperty: ClyMethodContextDefinitionProperty.
	^definition receiverItem name
]

{ #category : #initialization }
ClyProcessBrowser >> processPriorityOf: processItem [

	| definition |
	definition := processItem getProperty: ClyProcessDefinitionProperty.
	^definition priority
]

{ #category : #accessing }
ClyProcessBrowser >> processSelection [
	^processView selection
]

{ #category : #navigation }
ClyProcessBrowser >> showStackOfProcesses: processes [

	| stackQuery |
	stackQuery := ClyActiveContextOfProcessesQuery 
		from: (ClyProcessScope ofAll: processes actualObjects in: navigationEnvironment)
		as: ClyProcessStack new.
	
	stackView showQuery: stackQuery
]

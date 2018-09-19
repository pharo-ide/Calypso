Class {
	#name : #ClyProcessBrowserContext,
	#superclass : #ClySystemBrowserContext,
	#category : 'Calypso-SystemTools-ProcessBrowser'
}

{ #category : #'selection-contexts' }
ClyProcessBrowserContext >> isContextSelected [
	^self selectedContextItems notEmpty 
]

{ #category : #'selection-processes' }
ClyProcessBrowserContext >> isProcessSelected [
	^self selectedProcessItems notEmpty
]

{ #category : #'selection-contexts' }
ClyProcessBrowserContext >> lastSelectedContext [
	^self lastSelectedObjectIn: self selectedContexts
]

{ #category : #'selection-processes' }
ClyProcessBrowserContext >> lastSelectedProcess [
	^self lastSelectedObjectIn: self selectedProcesses
]

{ #category : #'selection-classes' }
ClyProcessBrowserContext >> selectedClassItems [
	
	^self selectedMethodItems collect: [:each | 
		each systemDefinition definingClassItem]
]

{ #category : #'selection-contexts' }
ClyProcessBrowserContext >> selectedContextItems [
	^tool contextSelection items
]

{ #category : #'selection-contexts' }
ClyProcessBrowserContext >> selectedContexts [
	^self actualSelectionFrom: self selectedContextItems
]

{ #category : #'selection-methods' }
ClyProcessBrowserContext >> selectedMethodItems [
	| contextDefinition |
	^self selectedContextItems collect: [:contextItem | 
		contextDefinition := contextItem getProperty: ClyMethodContextDefinitionProperty.
		contextDefinition definitionMethodItem]
]

{ #category : #'selection-packages' }
ClyProcessBrowserContext >> selectedPackageItems [
	^#()
]

{ #category : #'selection-processes' }
ClyProcessBrowserContext >> selectedProcessItems [
	^tool processSelection items
]

{ #category : #'selection-processes' }
ClyProcessBrowserContext >> selectedProcesses [
	^self actualSelectionFrom: self selectedProcessItems 
]

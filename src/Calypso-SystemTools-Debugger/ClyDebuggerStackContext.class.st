Class {
	#name : #ClyDebuggerStackContext,
	#superclass : #ClySystemBrowserContext,
	#category : 'Calypso-SystemTools-Debugger'
}

{ #category : #'selection strategy' }
ClyDebuggerStackContext class >> selectionStrategy [
	<classAnnotation>
	
	^ClyContextSelectionStrategy for: ClyDebugger selectionType: Context
]

{ #category : #'selection-contexts' }
ClyDebuggerStackContext >> lastSelectedContext [
	^self lastSelectedObject
]

{ #category : #'selection-classes' }
ClyDebuggerStackContext >> selectedClassItems [

	^self selectedMethodItems collect: [:each | 
		each systemDefinition definingClassItem]
]

{ #category : #'selection-contexts' }
ClyDebuggerStackContext >> selectedContextItems [
	^selectedItems
]

{ #category : #'selection-contexts' }
ClyDebuggerStackContext >> selectedContexts [
	^self actualSelectionFrom: self selectedContextItems
]

{ #category : #'selection-methods' }
ClyDebuggerStackContext >> selectedMethodItems [
	| contextDefinition |
	^selectedItems collect: [:contextItem | 
		contextDefinition := contextItem getProperty: ClyMethodContextDefinitionProperty.
		contextDefinition definitionMethodItem]
]

{ #category : #'selection-packages' }
ClyDebuggerStackContext >> selectedPackageItems [
	^#()
]

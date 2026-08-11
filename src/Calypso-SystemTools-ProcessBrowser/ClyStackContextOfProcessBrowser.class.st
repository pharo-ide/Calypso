Class {
	#name : 'ClyStackContextOfProcessBrowser',
	#superclass : 'ClyProcessBrowserContext',
	#category : 'Calypso-SystemTools-ProcessBrowser',
	#package : 'Calypso-SystemTools-ProcessBrowser'
}

{ #category : 'selection strategy' }
ClyStackContextOfProcessBrowser class >> selectionStrategy [

	<classAnnotation>
	^ ClyContextSelectionStrategyAnnotation
		  for: ClyProcessBrowser
		  selectionType: Context
]

{ #category : 'accessing' }
ClyStackContextOfProcessBrowser >> selectedContextItems [

	^ selectedItems
]

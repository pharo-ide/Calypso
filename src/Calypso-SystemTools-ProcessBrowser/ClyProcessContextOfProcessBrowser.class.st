Class {
	#name : 'ClyProcessContextOfProcessBrowser',
	#superclass : 'ClyProcessBrowserContext',
	#category : 'Calypso-SystemTools-ProcessBrowser',
	#package : 'Calypso-SystemTools-ProcessBrowser'
}

{ #category : 'selection strategy' }
ClyProcessContextOfProcessBrowser class >> selectionStrategy [

	<classAnnotation>
	^ ClyContextSelectionStrategyAnnotation
		  for: ClyProcessBrowser
		  selectionType: Process
]

{ #category : 'accessing' }
ClyProcessContextOfProcessBrowser >> selectedProcessItems [

	^ selectedItems
]

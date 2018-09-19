Class {
	#name : #ClyProcessContextOfProcessBrowser,
	#superclass : #ClyProcessBrowserContext,
	#category : 'Calypso-SystemTools-ProcessBrowser'
}

{ #category : #'selection strategy' }
ClyProcessContextOfProcessBrowser class >> selectionStrategy [
	<classAnnotation>
	
	^ClyContextSelectionStrategy for: ClyProcessBrowser selectionType: Process
]

{ #category : #accessing }
ClyProcessContextOfProcessBrowser >> selectedProcessItems [
	^selectedItems
]

Class {
	#name : #ClyStackContextOfProcessBrowser,
	#superclass : #ClyProcessBrowserContext,
	#category : 'Calypso-SystemTools-ProcessBrowser'
}

{ #category : #'selection strategy' }
ClyStackContextOfProcessBrowser class >> selectionStrategy [
	<classAnnotation>
	
	^ClyContextSelectionStrategy for: ClyProcessBrowser selectionType: Context
]

{ #category : #accessing }
ClyStackContextOfProcessBrowser >> selectedContextItems [
	^selectedItems
]

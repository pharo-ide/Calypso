Extension { #name : #ClySpawnFullBrowserCommand }

{ #category : #'*Calypso-SystemTools-ProcessBrowser' }
ClySpawnFullBrowserCommand class >> processBrowserToolbarActivation [
	<classAnnotation>
	
	^ClyToolbarActivation byItemOf: ClyButtonToolbarGroup for: ClyStackContextOfProcessBrowser 
]

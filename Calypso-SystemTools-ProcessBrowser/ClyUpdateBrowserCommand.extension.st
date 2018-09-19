Extension { #name : #ClyUpdateBrowserCommand }

{ #category : #'*Calypso-SystemTools-ProcessBrowser' }
ClyUpdateBrowserCommand class >> processBrowserContextMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemFor: ClyProcessContextOfProcessBrowser
]

{ #category : #'*Calypso-SystemTools-ProcessBrowser' }
ClyUpdateBrowserCommand class >> processBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation by: $r meta for: ClyProcessBrowserContext
]

{ #category : #'*Calypso-SystemTools-ProcessBrowser' }
ClyUpdateBrowserCommand class >> processBrowserToolbarActivation [
	<classAnnotation>
	
	^ClyToolbarActivation byRootGroupItemOrder: 1 for: ClyProcessContextOfProcessBrowser
]

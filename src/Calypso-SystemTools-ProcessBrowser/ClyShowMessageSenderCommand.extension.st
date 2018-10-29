Extension { #name : #ClyShowMessageSenderCommand }

{ #category : #'*Calypso-SystemTools-ProcessBrowser' }
ClyShowMessageSenderCommand class >> processBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemFor: ClyStackContextOfProcessBrowser 
]

{ #category : #'*Calypso-SystemTools-ProcessBrowser' }
ClyShowMessageSenderCommand class >> processBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation by: $n meta for: ClyStackContextOfProcessBrowser
]

{ #category : #'*Calypso-SystemTools-ProcessBrowser' }
ClyShowMessageSenderCommand class >> processBrowserToolbarActivation [
	<classAnnotation>
	
	^ClyToolbarActivation byItemOf: ClyButtonToolbarGroup for: ClyStackContextOfProcessBrowser 
]

Extension { #name : #ClyShowMessageImplementorCommand }

{ #category : #'*Calypso-SystemTools-ProcessBrowser' }
ClyShowMessageImplementorCommand class >> processBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemFor: ClyStackContextOfProcessBrowser 
]

{ #category : #'*Calypso-SystemTools-ProcessBrowser' }
ClyShowMessageImplementorCommand class >> processBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation by: $m meta for: ClyStackContextOfProcessBrowser
]

{ #category : #'*Calypso-SystemTools-ProcessBrowser' }
ClyShowMessageImplementorCommand class >> processBrowserToolbarActivation [
	<classAnnotation>
	
	^ClyToolbarActivation byItemOf: ClyButtonToolbarGroup for: ClyStackContextOfProcessBrowser
]

Class {
	#name : 'ClyUpdateBrowserCommand',
	#superclass : 'ClyBrowserCommand',
	#category : 'Calypso-SystemTools-ProcessBrowser',
	#package : 'Calypso-SystemTools-ProcessBrowser'
}

{ #category : 'activation' }
ClyUpdateBrowserCommand class >> processBrowserContextMenuActivation [

	<classAnnotation>
	^ CmdContextMenuActivation byRootGroupItemFor:
		  ClyProcessContextOfProcessBrowser
]

{ #category : 'activation' }
ClyUpdateBrowserCommand class >> processBrowserShortcutActivation [

	<classAnnotation>
	^ CmdShortcutActivation by: $r meta for: ClyProcessBrowserContext
]

{ #category : 'activation' }
ClyUpdateBrowserCommand class >> processBrowserToolbarActivation [

	<classAnnotation>
	^ ClyToolbarActivation
		  byRootGroupItemOrder: 1
		  for: ClyProcessContextOfProcessBrowser
]

{ #category : 'accessing' }
ClyUpdateBrowserCommand >> defaultMenuIconName [

	^ #smallUpdate
]

{ #category : 'accessing' }
ClyUpdateBrowserCommand >> defaultMenuItemName [

	^ 'Update'
]

{ #category : 'execution' }
ClyUpdateBrowserCommand >> execute [

	browser update
]

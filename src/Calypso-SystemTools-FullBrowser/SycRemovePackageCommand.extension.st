Extension { #name : #SycRemovePackageCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRemovePackageCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 10000 for: ClyPackageContextOfFullBrowser 
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRemovePackageCommand classSide >> fullBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation removalFor: ClyPackageContextOfFullBrowser
]

Extension { #name : #SycRenamePackageCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRenamePackageCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 1 for: ClyPackageContextOfFullBrowser 
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRenamePackageCommand classSide >> fullBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation renamingFor: ClyPackageContextOfFullBrowser
]

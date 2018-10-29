Extension { #name : #SycRenameVariableCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRenameVariableCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 1 for: ClyVariableContextOfFullBrowser 
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRenameVariableCommand classSide >> fullBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation renamingFor: ClyVariableContextOfFullBrowser
]

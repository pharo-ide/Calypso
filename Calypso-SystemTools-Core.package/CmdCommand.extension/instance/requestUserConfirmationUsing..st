*Calypso-SystemTools-Core
requestUserConfirmationUsing: aCommandActivator
	
	| refactorings submitDialog |
	refactorings := self asRefactorings.
	refactorings do: [:each | each primitiveExecute].
	
	submitDialog := ChangesBrowser changes: refactorings.
	submitDialog openDialogWithSpec
		okAction: [ submitDialog accept. 
			aCommandActivator applyCommandResult];
		cancelAction: [ submitDialog cancel ].
	
	CmdCommandAborted signal
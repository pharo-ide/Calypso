*Calypso-SystemTools-Core
requestUserConfirmationUsing: aCommandActivator
	
	| submitDialog |
	
	submitDialog := SycRefactoringPreview for: self scopes: aCommandActivator context refactoringScopes.
	submitDialog openDialogWithSpec
		okAction: [ submitDialog accept. 
			aCommandActivator applyCommandResult];
		cancelAction: [ submitDialog cancel ].
	
	CmdCommandAborted signal
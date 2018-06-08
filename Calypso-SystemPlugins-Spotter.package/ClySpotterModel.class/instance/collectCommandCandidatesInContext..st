private
collectCommandCandidatesInContext: aContext
	| allActivators allCommands |
	allActivators := CmdContextMenuActivation createActivatorsExecutableInContext: aContext.
	allCommands := allActivators collect: [ :each | each command class ] as: IdentitySet.
	
	CmdMenuCommandActivationStrategy allSubclassesDo: [ :eachStrategy |
		eachStrategy activateAllInContext: aContext by: [ :eachActivator |
			(allCommands includes: eachActivator command class) ifFalse: [ 
				allActivators add: eachActivator.
				allCommands add: eachActivator command class] ] ].
	
	^allActivators
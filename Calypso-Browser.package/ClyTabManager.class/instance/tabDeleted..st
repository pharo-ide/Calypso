private
tabDeleted: aTab

	| removedTool |
	removedTool := tools detect: [ :each | each containerTab = aTab ] ifNone: [ ^self ].
	tools remove: removedTool.
	removedTool cleanAfterRemove	
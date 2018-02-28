execution
execute
	
	| repackagingCommand |
	methodGroups do: [ :each | 
		repackagingCommand := SycMoveMethodsToPackageCommand for: each methods to: package.
		repackagingCommand execute]
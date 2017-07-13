execution
execute
	packages ifEmpty: [ ^Komitter openAndCommitToMonticello ].
	
	Komitter openAndCommitToMonticelloWorkingCopiesFilteredBy: [ :workingCopy |
		"simple #includes: not works here. Somehow packages are different" 
		packages anySatisfy: [ :each | each name = workingCopy package name]] 
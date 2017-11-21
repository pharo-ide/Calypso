instance creation
variable: aVariable from: aClassScope
	^self 
		named: aVariable name 
		on: (ClyVariableReferences of: {aVariable} from: aClassScope)
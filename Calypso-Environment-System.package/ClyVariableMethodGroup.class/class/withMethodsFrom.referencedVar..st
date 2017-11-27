instance creation
withMethodsFrom: aVariable referencedVar: aClassScope
	^self 
		named: aVariable name 
		on: (ClyVariableReferences of: {aVariable} from: aClassScope)
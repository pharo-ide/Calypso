instance creation
withMethodsFrom: aClassScope referencedVar: aVariable
	^(self named: aVariable name with: aVariable)
		methodQuery: (ClyVariableReferences of: {aVariable} from: aClassScope)
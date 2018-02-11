selection-variables
selectedVariables
	^(self actualSelectionFrom: self selectedVariableItems) collect: [ :each | each variable ]
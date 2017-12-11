selecting text
selectAnyVariable: varNames

	textMorph setSelection: (self findAnyVariableInSourceCode: varNames)
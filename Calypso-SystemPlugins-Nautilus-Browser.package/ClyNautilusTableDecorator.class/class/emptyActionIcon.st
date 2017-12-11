private
emptyActionIcon

	^emptyActionIcon ifNil: [emptyActionIcon := MethodDefaultAction new privateActionIcon]
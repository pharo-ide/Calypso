tool controlling
showMessage: aMessageDescription renamedTo: newSelector
	"here we expect only messages which was created from ast-nodes"
	tool editingMethod selector == aMessageDescription selector 
		ifTrue: [ tool switchToMethod: tool methodClass >> newSelector]
		ifFalse: [ tool selectAnySelector: { newSelector } ]
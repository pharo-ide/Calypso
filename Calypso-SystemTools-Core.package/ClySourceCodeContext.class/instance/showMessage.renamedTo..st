tool controlling
showMessage: aMessageDescription renamedTo: newSelector
	"here we expect only messages which was created from ast-nodes"
	tool editingMethod selector == aMessageDescription selector 
		ifTrue: [ self browser selectMethod: tool methodClass >> newSelector]
		ifFalse: [ tool selectAnySelector: { newSelector } ]
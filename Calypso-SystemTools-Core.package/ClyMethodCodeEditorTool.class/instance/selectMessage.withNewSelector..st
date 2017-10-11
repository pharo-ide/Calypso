selecting text
selectMessage: aMessageDescription withNewSelector: newSelector
	"here we expect only messages which was created from ast-nodes"
	editingMethod selector == aMessageDescription selector 
		ifTrue: [ browser selectMethod: self methodClass >> newSelector]
		ifFalse: [ self selectAnySelector: { newSelector } ]
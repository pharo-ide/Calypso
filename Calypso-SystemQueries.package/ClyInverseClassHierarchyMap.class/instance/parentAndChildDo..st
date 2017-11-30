accessing
parentAndChildDo: twoArgBlock
	"Here we have inverse parent map where key is child and values are parents"
	parentMap keysAndValuesDo: [ :child :parents | 
		parents do: [ :parent | twoArgBlock value: parent value: child ] ]
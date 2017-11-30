accessing
parentAndChildDo: twoArgBlock

	parentMap keysAndValuesDo: [ :parent :children | 
		children do: [ :child | twoArgBlock value: parent value: child ] ]
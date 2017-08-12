public
selectedMethods
	^self selectedObjects collect: [ :each | each method ]
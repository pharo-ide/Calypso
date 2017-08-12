public
selectedClasses
	^self selectedObjects collect: [:each | each receiver class]
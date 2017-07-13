initialization
defaultTitle
	^context hasSelectedItems 
		ifTrue: [ context lastSelectedItem name]
		ifFalse: [ self class name]
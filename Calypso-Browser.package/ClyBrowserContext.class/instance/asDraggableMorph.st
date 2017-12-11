drag and drop
asDraggableMorph
	^(String streamContents: [ :s| 
		selectedItems 
			do: [ :each | s nextPutAll: each name ]
			separatedBy: [ s space ]]) asStringMorph
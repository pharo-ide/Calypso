building
editingMode
	| editingMode |
	editingMode := ClyTextEditingMode browserTool: self.
	editingMode
		classOrMetaClass: self selectedClassOrMetaClass;
		isForScripting: self isForScripting.
	^editingMode
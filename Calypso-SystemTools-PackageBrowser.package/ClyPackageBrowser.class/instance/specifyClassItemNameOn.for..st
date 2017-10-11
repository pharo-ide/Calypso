initialization
specifyClassItemNameOn: nameMorph for: classItem
	| definition |
	nameMorph contents: classItem name.
	
	definition := classItem getProperty: ClyClassDefinitionProperty.
	
	self packageSelection isMultipleSelected ifTrue: [
		nameMorph contents: (definition printFullNameOf: classItem)].
	(self isPackagePartOfSelection: definition definitionPackage) 
		ifFalse: [nameMorph color: Smalltalk ui theme classExtensionColor]
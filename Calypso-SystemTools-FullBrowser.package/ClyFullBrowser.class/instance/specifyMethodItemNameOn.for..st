initialization
specifyMethodItemNameOn: nameMorph for: methodItem
	| definition |
	nameMorph contents: methodItem name.
	
	definition := methodItem	systemDefinition.
	(self isPackagePartOfSelection: definition definingPackage) ifFalse: [
		nameMorph color: Smalltalk ui theme classExtensionColor].
	
	self classSelection isMultipleSelected ifTrue: [
		^nameMorph contents: (definition printFullNameOf: methodItem)].
	
	(self isClassSelected: definition definingClass) ifTrue: [ ^self].
	
	nameMorph emphasis: TextEmphasis italic emphasisCode.
	nameMorph contents: (definition printFullNameOf: methodItem)
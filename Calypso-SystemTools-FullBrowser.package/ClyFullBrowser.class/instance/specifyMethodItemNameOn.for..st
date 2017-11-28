initialization
specifyMethodItemNameOn: nameMorph for: methodItem
	| definition highlightMainMethods |
	nameMorph contents: methodItem name.
	
	definition := methodItem	getProperty: ClyMethodDefinitionProperty.
	(self isPackagePartOfSelection: definition definitionPackage) ifFalse: [
		nameMorph color: Smalltalk ui theme classExtensionColor].
	
	self classSelection isMultipleSelected ifTrue: [
		^nameMorph contents: (definition printFullNameOf: methodItem)].
	
	highlightMainMethods := methodGroupView dataSource executesFromMultipleScope.
	(self isClassSelected: definition definitionClass) ifTrue: [ 	
		highlightMainMethods ifTrue: [ nameMorph emphasis: TextEmphasis bold emphasisCode].
		^self].
	
	nameMorph emphasis: TextEmphasis italic emphasisCode.
	nameMorph contents: (definition printFullNameOf: methodItem)
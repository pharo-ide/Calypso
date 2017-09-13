initialization
specifyMethodItemNameOn: nameMorph for: methodItem
	| definition highlightMainMethods |
	nameMorph contents: methodItem name.
	
	definition := methodItem	getProperty: ClyMethodDefinitionProperty.
	(self isPackagePartOfSelection: definition definitionPackage) ifFalse: [
		nameMorph color: Smalltalk ui theme classExtensionColor].
	
	self selectedClasses isMultipleSelected ifTrue: [
		^nameMorph contents: (definition printFullNameOf: methodItem)].
	
	highlightMainMethods := methodGroupView dataSource isBasedOnScopeOfMultipleObjects.
	(self isClassSelected: definition definitionClass) ifTrue: [ 	
		highlightMainMethods ifTrue: [ nameMorph emphasis: TextEmphasis bold emphasisCode].
		^self].
	
	nameMorph emphasis: TextEmphasis italic emphasisCode.
	nameMorph contents: (definition printFullNameOf: methodItem)
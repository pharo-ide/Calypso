initialization
specifyMethodItemNameOn: nameMorph for: methodItem
	| definition highlightMainMethods |
	nameMorph contents: methodItem name.
	
	definition := methodItem	systemDefinition.
	(self isPackagePartOfSelection: definition definingPackage) ifFalse: [
		nameMorph color: Smalltalk ui theme classExtensionColor].
	
	self classSelection isMultipleSelected ifTrue: [
		^nameMorph contents: (definition printFullNameOf: methodItem)].
	
	highlightMainMethods := methodGroupView showsItemsFromMultipleScope.
	(self isClassSelected: definition definingClass) ifTrue: [ 	
		highlightMainMethods ifTrue: [ nameMorph emphasis: TextEmphasis bold emphasisCode].
		^self].
	
	nameMorph emphasis: TextEmphasis italic emphasisCode.
	nameMorph contents: (definition printFullNameOf: methodItem)
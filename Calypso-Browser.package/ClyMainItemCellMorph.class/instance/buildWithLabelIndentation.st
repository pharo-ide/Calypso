building
buildWithLabelIndentation

	| expansionButton |
	item supportsExpansion ifTrue: [ 
		expansionButton := self currentExpansionButton.
		self addMorphBack: expansionButton].
	definitionMorph ifNotNil: [
		definitionMorph width: 16.
		 self addMorphBack: definitionMorph].
	
	self addBarForLabelIndentation.
	self addMorphBack: label.
	extraToolMorphs ifNotNil: [ extraToolMorphs do: [:each |
			each width: 16.
			 self addMorphBack: each  ] ]
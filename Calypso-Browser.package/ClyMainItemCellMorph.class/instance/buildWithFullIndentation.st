building
buildWithFullIndentation

	| expansionButton |
	self addBarForFullIndentation.
	item supportsExpansion ifTrue: [ 
		expansionButton := self currentExpansionButton.
		self addMorphBack: expansionButton].
	definitionMorph ifNotNil: [
		definitionMorph width: 16.
		 self addMorphBack: definitionMorph].
	
	
	self addMorphBack: label.
	extraToolMorphs ifNotNil: [ extraToolMorphs do: [:each |
			each width: 16.
			 self addMorphBack: each  ] ]
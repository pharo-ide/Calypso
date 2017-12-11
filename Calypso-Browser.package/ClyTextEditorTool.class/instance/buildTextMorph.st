building
buildTextMorph
	textModel := RubScrolledTextModel new.
	textModel interactionModel: self.
	textMorph := textModel newScrolledText.
	textMorph
		width: self width; "build is performed in background when owner is not exist yet. But we need proper width to perform kind of styling/formatting if needed"
		beWrapped;
		font: StandardFonts codeFont;
		editingMode: self editingMode;
		withTextSegmentIcons.
	textModel setInitialText: self editingText
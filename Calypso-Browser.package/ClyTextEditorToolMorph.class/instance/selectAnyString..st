selecting text
selectAnyString: strings

	textMorph setSelection: (self findAnyString: strings in: self pendingText)
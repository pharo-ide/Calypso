events subscription
whenEscapeKeyPressedDo: aBlock

	table bindKeyCombination: Character escape asShortcut toAction: aBlock 
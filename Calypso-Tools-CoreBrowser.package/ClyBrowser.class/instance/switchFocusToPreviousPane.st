navigation
switchFocusToPreviousPane

	| focused next |
	focused := navigationViews detect: [ :each | each hasKeyboardFocus ] ifNone: [ ^self ].
	next := navigationViews before: focused ifAbsent: [ ^self ].
	next takeKeyboardFocus
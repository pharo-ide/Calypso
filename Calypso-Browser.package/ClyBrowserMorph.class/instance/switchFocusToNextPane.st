navigation
switchFocusToNextPane

	| focused next |
	focused := navigationViews detect: [ :each | each hasKeyboardFocus ] ifNone: [ ^self ].
	next := navigationViews after: focused ifAbsent: [ ^self focusActiveTab ].
	next takeKeyboardFocus
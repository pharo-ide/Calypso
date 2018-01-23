private
collectPanelCandidates
	^ { 
	'Packages' -> [ self browser packageView takeKeyboardFocus ]. 
	'Classes' -> [ self browser classView takeKeyboardFocus ]. 
	'Protocols' -> [ self browser methodGroupView takeKeyboardFocus ].
	'Methods' -> [ self browser methodView takeKeyboardFocus ] }

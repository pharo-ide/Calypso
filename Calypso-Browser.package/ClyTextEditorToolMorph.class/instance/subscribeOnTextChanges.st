building
subscribeOnTextChanges

	textMorph announcer 		
		when: RubTextAccepted send: #changesAccepted to: self;
		when: RubTextChanged send: #textChanged: to: self;
		when: RubCancelEditRequested send: #changesCancelRequested: to: self
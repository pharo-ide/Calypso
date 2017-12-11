controlling
attachToSystem

	browser system 
		when: (ClyMethodChange of: self editingMethod)
		send: #update
		to: self
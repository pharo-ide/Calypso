controlling
attachToSystem

	browser system 
		when: (ClyMethodChange ofAll: {self leftMethod. self rightMethod}) send: #update to: self
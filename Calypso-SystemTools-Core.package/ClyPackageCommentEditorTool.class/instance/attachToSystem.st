controlling
attachToSystem

	browser system 
		when: (ClyPackageChange of: editingPackage) send: #triggerUpdate to: self
building
buildExtensionCheckBoxButton
	extensionCheckbox := self theme 
		newCheckboxIn: self 
		for: self 
		getSelected: #isExtensionActive 
		setSelected: #toggleExtension
		getEnabled: nil 
		label: 'extension'
		help: 'toggle check box to choose/reset package of method'.
	extensionCheckbox
		changeTableLayout;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap
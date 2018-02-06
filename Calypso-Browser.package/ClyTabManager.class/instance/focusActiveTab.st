focus management
focusActiveTab

	| activeTab |
	activeTab := self selectedTools detectMax: [ :each | 
		self activationPriorityOf: each].
		
	activeTab ifNotNil: [ activeTab takeKeyboardFocus]
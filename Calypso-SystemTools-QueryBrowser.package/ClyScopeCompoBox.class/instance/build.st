initialization
build
	dropList := self theme 
		newDropListIn: World
		for: self 
		list: #scopeNames
		getSelected: #currentScopeIndex 
		setSelected: #currentScopeIndex: 
		getEnabled: nil useIndex: true
		help: self currentScope printBasis. 
		
	self addMorph: dropList
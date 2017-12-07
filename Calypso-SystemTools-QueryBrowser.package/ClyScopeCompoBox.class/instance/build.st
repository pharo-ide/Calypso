initialization
build
	dropList := self theme 
		newDropListIn: World
		for: self 
		list: #scopeNames
		getSelected: #currentScopeIndex 
		setSelected: #currentScopeIndex: 
		getEnabled: nil useIndex: true
		help: self currentScope description. 
		
	self addMorph: dropList
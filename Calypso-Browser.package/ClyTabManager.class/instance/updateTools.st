updating
updateTools
	| newTools selectedTools |
	self updateToolsBy: [ 
		newTools := OrderedCollection new.	
		browser currentContextsDo: [ :each | self buildToolsOn: newTools for: each].

		selectedTools := self selectedTools.
		self updateTabsWith: newTools.
		self restoreSelectedTools: selectedTools.
	]
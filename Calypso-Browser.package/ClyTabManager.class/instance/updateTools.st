updating
updateTools
	| newTools selectedTools currentTools |
	self updateToolsBy: [
		newTools := OrderedCollection new.	
		browser navigationContextsDo: [ :each | self buildToolsOn: newTools for: each].

		selectedTools := self selectedTools.
		currentTools := tools copy.
		self updateTabsWith: newTools.
		tools = currentTools ifFalse: [ self restoreSelectedTools: selectedTools].
	]
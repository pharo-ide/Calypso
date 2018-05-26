updating
updateTools
	| newTools selectedTools currentTools needsNewSelection |
	self updateToolsBy: [
		newTools := OrderedCollection new.	
		browser navigationContextsDo: [ :each | self buildToolsOn: newTools for: each].

		needsNewSelection := self requiresNewDesiredSelection.
		selectedTools := self selectedTools.
		currentTools := tools copy.
		self updateTabsWith: newTools.
		tools ~= currentTools | needsNewSelection ifTrue: [ self restoreSelectedTools: selectedTools].
	]
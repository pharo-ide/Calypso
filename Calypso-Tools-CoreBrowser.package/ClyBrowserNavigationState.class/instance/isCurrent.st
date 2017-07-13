testing
isCurrent

	^(viewStates allSatisfy: [ :each | each isCurrent])
		and: [ browser tabManager selectsTools: selectedTabs ]
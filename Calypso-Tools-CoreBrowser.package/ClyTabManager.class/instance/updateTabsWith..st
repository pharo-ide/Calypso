updating
updateTabsWith: newTools
	| toRemove toInstall |
	toRemove := OrderedCollection withAll: tools.
	toInstall := OrderedCollection new.
	newTools do: [:new | 
		tools 
			detect: [ :existing | existing isSimilarTo: new ]
			ifFound: [:existing | toRemove remove: existing ]
			ifNone: [ toInstall add: new ]].

	toRemove do: [ :each | 
		each wantsStayInDifferentContext ifFalse: [ each removeFromBrowser ]].
	tools do: [ :each | each browserContextWasChanged ].
	toInstall do: [ :each | self addTool: each]
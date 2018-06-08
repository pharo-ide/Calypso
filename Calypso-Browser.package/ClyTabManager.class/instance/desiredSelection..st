accessing
desiredSelection: toolClasses
	| currentSelection |
	desiredSelection := toolClasses asIdentitySet.
	shouldSkipCurrentDesiredSelection ifFalse: [ 
		currentSelection := self selectedTools collect: [ :each | each class ].
		desiredSelection addAll: currentSelection].
	shouldSkipCurrentDesiredSelection := false "it is one time option" 
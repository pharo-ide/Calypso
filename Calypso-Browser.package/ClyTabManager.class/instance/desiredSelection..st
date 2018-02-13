accessing
desiredSelection: toolClasses
	| currentSelection |
	currentSelection := self selectedTools collect: [ :each | each class ].
	desiredSelection := toolClasses asIdentitySet.
	desiredSelection addAll: currentSelection
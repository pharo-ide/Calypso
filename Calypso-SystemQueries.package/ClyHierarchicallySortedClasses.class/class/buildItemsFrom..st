building items
buildItemsFrom: classes

	| result |
	result := self new.
	result itemBuffer: (OrderedCollection new: classes size).
	result fillWith: classes.
	^result items
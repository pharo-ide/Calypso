building items
buildItemsFrom: classes

	| classesHierarchy |
	classesHierarchy := self new.
	classesHierarchy items: (OrderedCollection new: classes size).
	classesHierarchy fillWith: classes.
	^classesHierarchy items
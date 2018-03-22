building items
buildItemsFrom: classes

	| classesHierarchy |
	classesHierarchy := self new.
	classesHierarchy itemBuffer: (OrderedCollection new: classes size).
	classesHierarchy fillWith: classes.
	^classesHierarchy items
building items
buildItemsOn: classes

	| classesHierarchy |
	classesHierarchy := self new.
	classesHierarchy items: (OrderedCollection new: classes size).
	classesHierarchy fillWith: classes.
	^classesHierarchy items
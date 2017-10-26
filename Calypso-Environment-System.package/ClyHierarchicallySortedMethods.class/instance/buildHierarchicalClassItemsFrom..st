building
buildHierarchicalClassItemsFrom: groupedMethods

	| classesHierarchy |
	classesHierarchy := ClyHierarchicallySortedClasses new.
	classesHierarchy items: (OrderedCollection new: groupedMethods size).
	classesHierarchy fillWith: groupedMethods keys.
	
	^classesHierarchy items
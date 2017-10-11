building
buildHierarchicalClassItemsFrom: groupedMethods

	| classesHierarchy |
	classesHierarchy := ClyHierarchicallySortedClasses new.
	classesHierarchy items: (OrderedCollection new: groupedMethods size).
	classesHierarchy buildFromClasses: groupedMethods keys asIdentitySet.
	
	^classesHierarchy items
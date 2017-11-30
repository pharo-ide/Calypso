building
buildRootsFrom: classes withParentsOn: parents
	| rootClasses classParents sortedChildren |
	rootClasses := self containerForItemsSortedByName.

	classes do: [ :each |	
		classParents := self parentsOf: each which: [:eachParent | classes includes: eachParent].
		classParents ifEmpty: [ rootClasses add: each asCalypsoBrowserItem ].
		classParents do: [:eachParent | 
			sortedChildren := parents at: eachParent ifAbsentPut: [
				self containerForItemsSortedByName].
			sortedChildren add: each]].	
		
	^rootClasses
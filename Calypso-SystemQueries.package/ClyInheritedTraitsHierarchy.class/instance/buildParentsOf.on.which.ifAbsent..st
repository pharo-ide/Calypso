private
buildParentsOf: aClass on: parentClasses which: conditionBlock ifAbsent: rootBlock
	| item classParents sortedChildren |		
			
	item := ClyBrowserItem named: aClass name with: aClass.
	item depth: (self computeDepthOf: aClass forSuperclassesWhich: conditionBlock).
	
	classParents := self parentsOf: aClass which: conditionBlock.
	classParents do: [:eachParent | 	
		sortedChildren := parentClasses at: eachParent ifAbsentPut: [
				self containerForItemsSortedByName].
		sortedChildren add: item].	
			
	^item
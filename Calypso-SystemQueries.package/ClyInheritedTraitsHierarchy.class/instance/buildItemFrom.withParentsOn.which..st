private
buildItemFrom: aClass withParentsOn: parentClasses which: aBlock
	| item classParents sortedChildren |		
			
	item := ClyBrowserItem named: aClass name with: aClass.
	item depth: (self computeDepthOf: aClass forSuperclassesWhich: aBlock).
	
	classParents := self parentsOf: aClass which: aBlock.
	classParents do: [:eachParent | 	
		sortedChildren := parentClasses at: eachParent ifAbsentPut: [
				self containerForItemsSortedByName].
		sortedChildren add: item].	
			
	^item
as yet unclassified
buildItemFrom: aClass withSuperclassesOn: localSubclasses which: aBlock
	| item superclass sortedSubclasses |		
			
	item := ClyBrowserItem named: aClass name with: aClass.
	item depth: (self computeDepthOf: aClass forSuperclassesWhich: aBlock).
	
	superclass := self superclassOf: aClass which: aBlock ifAbsent: [^item].
		
	sortedSubclasses := localSubclasses at: superclass ifAbsentPut: [
			self containerForItemsSortedByName].
	sortedSubclasses add: item.	
			
	^item
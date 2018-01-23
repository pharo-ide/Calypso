testing
hasChildrenWhich: aBlockWithChildType

	^properties anySatisfy: [ :each | 
		(each isKindOf: ClyChildrenTag) 
			and: [ aBlockWithChildType value: each childrenType ] ] 
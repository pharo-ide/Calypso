testing
hasChildrenWhich: aBlockWithChildType

	^properties anySatisfy: [ :each | 
		(each isKindOf: ClyItemChildrenTag) 
			and: [ aBlockWithChildType value: each childrenType ] ] 
testing
hasChildrenOf: itemTypeClass

	^self hasChildrenWhich: [ :childType | childType = itemTypeClass]
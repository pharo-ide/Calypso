comparing
hash
	"Answer an integer value that is related to the identity of the receiver."

	^(super hash bitXor: hierarchyClass hash)
		bitXor: (hierarchyMapClass hash bitXor: sortFunction hash)
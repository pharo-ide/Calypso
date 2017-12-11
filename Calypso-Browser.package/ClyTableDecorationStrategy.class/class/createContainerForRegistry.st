private
createContainerForRegistry
	"Decoration with more priority should override applied changes of table row 
	which was produced by less prioritized decorations.
	It can be done if most prioritized decorator will be applied on the table at last order.
	Here we revert annotation enumeration logic by managing registry in opposite order
	according to described idea"
	
	^SortedCollection sortBlock: #priority ascending
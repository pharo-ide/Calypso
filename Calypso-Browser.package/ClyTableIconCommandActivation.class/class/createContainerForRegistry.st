private
createContainerForRegistry
	"This strategy decorates table rows with UI element which execute the command.
	Decoration with more priority should override applied changes of table row 
	which was produced by less prioritized decoration.
	It can be done if most priority command will decorate the table at last order.
	Here we revert annotation enumeration logic by managing registry in opposite order
	according to described idea"
	
	^SortedCollection sortBlock: #priority ascending
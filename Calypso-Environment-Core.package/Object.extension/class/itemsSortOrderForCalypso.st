*Calypso-Environment-Core
itemsSortOrderForCalypso
	"This method allows specify order of group of concrete type of items 
	Larger value will put items to the end of list comparing to the items of another type.
	By default it is big value multiplied by hash of type. 
	It gives behavior where items of different type will be always splitted in the list
	and sorted separatelly"
	^1000 * self hash
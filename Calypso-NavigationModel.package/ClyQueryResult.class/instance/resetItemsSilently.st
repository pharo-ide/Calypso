initialization
resetItemsSilently
	"This method allows reset result cache without observers notification.
	It can be suitable for some queries to not force observers update after changes
	but instead allow them update items manually. 
	After this method is called observers will be updated only whe they will try access items again"
	
	items := nil
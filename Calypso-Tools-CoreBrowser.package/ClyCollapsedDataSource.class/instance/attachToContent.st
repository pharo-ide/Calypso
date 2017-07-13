controlling
attachToContent
	super attachToContent.
	expandedItems do: [ :each | each childrenDataSource attachToContent ]
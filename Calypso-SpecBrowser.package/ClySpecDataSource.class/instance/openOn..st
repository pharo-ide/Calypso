controlling
openOn: aQueryPresenter
	
	self isClosed ifFalse: [ self close ].

	queryView := aQueryPresenter.	
	tablePresenter := aQueryPresenter table.
	itemCursor := query openBrowserCursorFor: self.
	dirty := false.
	
	expandedItems do: [:each | each childrenDataSource openOn: aQueryPresenter]
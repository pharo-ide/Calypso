Class {
	#name : #ClySpecDataSource,
	#superclass : #SpecTableDataSource,
	#instVars : [
		'query',
		'itemCursor',
		'depth',
		'parentItem',
		'lastFilteredDataSource',
		'queryView',
		'dirty',
		'expandedItems'
	],
	#category : 'Calypso-SpecBrowser'
}

{ #category : #'instance creation' }
ClySpecDataSource class >> empty [

	^ClySpecDataSource on: ClyUnknownQuery instance
]

{ #category : #'instance creation' }
ClySpecDataSource class >> on: aQuery [
	^self new 
		query: aQuery
]

{ #category : #accessing }
ClySpecDataSource >> allElements [
	^(1 to: self numberOfRows) collect: [ :i | 
		self elementAt: i] 
]

{ #category : #controlling }
ClySpecDataSource >> close [
	lastFilteredDataSource ifNotNil: [ 
		lastFilteredDataSource close].
	
	itemCursor := itemCursor close.
	
	expandedItems do: [ :each | each childrenDataSource close  ]
]

{ #category : #controlling }
ClySpecDataSource >> collapse: aDataSourceItem [
	queryView changeStateBy: [ 
		expandedItems remove: aDataSourceItem.
		aDataSourceItem childrenDataSource close.	

		self expansionChanged]
]

{ #category : #copying }
ClySpecDataSource >> copyForBrowserStateSnapshot [

	^self copy
		initializeForBrowserStateSpanshot;
		yourself
]

{ #category : #accessing }
ClySpecDataSource >> countChildrenOf: aDataSourceItem [
	aDataSourceItem childrenDataSource ifNotNil: [:children | ^children numberOfRows].
	
	self definesChildren ifFalse: [ ^0 ].

	self error: 'should not happen'
]

{ #category : #private }
ClySpecDataSource >> createElementWith: anEnvironmentItem [

	^self 
		findCachedElementWith: anEnvironmentItem 
		ifAbsent: [ ClyDataSourceItem of: self value: anEnvironmentItem]
]

{ #category : #testing }
ClySpecDataSource >> definesChildren [
	^queryView definesTree
]

{ #category : #accessing }
ClySpecDataSource >> depth [
	^ depth
]

{ #category : #accessing }
ClySpecDataSource >> depth: anObject [
	depth := anObject
]

{ #category : #testing }
ClySpecDataSource >> doesItemHaveChildren: aDataSourceItem [
	| childQuery |
	aDataSourceItem childrenDataSource ifNotNil: [:children | ^children isEmpty not].
	
	self definesChildren ifFalse: [ ^false ].

	childQuery := queryView queryToExpand: aDataSourceItem ifAbsent: [^false].
	
	^aDataSourceItem browserItem hasChildrenWhich: [:childType | 
		childQuery retrievesItemsOfType: childType ]
]

{ #category : #'drag and drop' }
ClySpecDataSource >> dragTransferType [
	^#CommanderDragAndDrop
]

{ #category : #'drag and drop' }
ClySpecDataSource >> dropElements: aPassenger index: rowIndex [
	| dropTargetItem |
	dropTargetItem := self elementAt: rowIndex.
	
	^queryView dropPassenger: aPassenger at: dropTargetItem
]

{ #category : #accessing }
ClySpecDataSource >> elementAt: rowIndex [
	| localIndex |
	localIndex := rowIndex.	

	expandedItems do: [:each | 
		each position = localIndex ifTrue: [ ^each ].
		(each hasChildAt: localIndex) ifTrue: [
			^each childrenItemAt: localIndex].
		(each isAfter: localIndex) ifTrue: [
			self itemCursor moveTo: localIndex.
			^ ClyDataSourceItem of: self value: self itemCursor currentItem ].
		localIndex := localIndex - each childrenCount.
	].

	self itemCursor moveTo: localIndex.
	^ClyDataSourceItem of: self value: self itemCursor currentItem
]

{ #category : #controlling }
ClySpecDataSource >> expand: aDataSourceItem [
	queryView changeStateBy: [
		aDataSourceItem expandChildren.
	
		expandedItems add: aDataSourceItem.

		self expansionChanged]
]

{ #category : #controlling }
ClySpecDataSource >> expansionChanged [
	queryView restoreSelectedItems.
	self tableRefresh.
	self table resetFunction
]

{ #category : #private }
ClySpecDataSource >> findCachedElementWith: anEnvironmentItem ifAbsent: absentBlock [

	^expandedItems 
		detect: [ :each | each actualObject == anEnvironmentItem actualObject ]
		ifNone: absentBlock
]

{ #category : #accessing }
ClySpecDataSource >> findDataSourceSameAs: aDataSource ifNone: noneBlock [
	| found |
	(self isSameAs: aDataSource) ifTrue: [ ^self ].
	
	expandedItems do: [ :each | 
		found := each childrenDataSource findDataSourceSameAs: aDataSource ifNone: [nil].
		found ifNotNil: [ ^found ]].
		
	^noneBlock value
]

{ #category : #queries }
ClySpecDataSource >> findItemsSimilarTo: dataSourceItems [

	| foundItems relatedItems myItems childItems |
	relatedItems := dataSourceItems 
		select: [ :each | self isBasedOnQueryOf: each type ]
		thenCollect: [ :each | each browserItem ].
	foundItems := self itemCursor findItemsSimilarTo: relatedItems.

	myItems := foundItems collect: [:each | self createElementWith: each ].
	myItems size == dataSourceItems size ifTrue: [ ^myItems ].
	
	childItems := expandedItems flatCollect: [ :each | 
		each childrenDataSource findItemsSimilarTo: dataSourceItems].
	
	^myItems, childItems
]

{ #category : #queries }
ClySpecDataSource >> findItemsWhere: conditionBlock [

	| foundItems myItems childItems |
	foundItems := self itemCursor findItemsWhere: conditionBlock.

	myItems := foundItems collect: [:each | self createElementWith: each ].
		
	childItems := expandedItems flatCollect: [ :each | 
		each  childrenDataSource findItemsWhere: conditionBlock].
	
	^myItems, childItems
]

{ #category : #queries }
ClySpecDataSource >> findItemsWith: actualObjects [

	| foundItems myItems childItems |
	foundItems := self itemCursor findItemsWith: actualObjects.

	myItems := foundItems select: #notNil thenCollect: [:each | 
		self createElementWith: each ].	
	myItems size == actualObjects size ifTrue: [ ^myItems ].
	
	childItems := expandedItems flatCollect: [ :each | 
		each childrenDataSource findItemsWith: actualObjects].
	
	^myItems, childItems
]

{ #category : #controlling }
ClySpecDataSource >> forceFullUpdate [

	itemCursor forceFullUpdate.
	
	expandedItems do: [ :each | each childrenDataSource forceFullUpdate]
]

{ #category : #accessing }
ClySpecDataSource >> getMetaProperty: aPropertyClass [
	^self itemCursor getMetaProperty: aPropertyClass
]

{ #category : #accessing }
ClySpecDataSource >> globalPositionOf: childDataSourceItem [

	| result |
	result := parentItem ifNil: [ 0 ] ifNotNil: [ parentItem globalPosition ].
	expandedItems do: [ :each | 
		(each isAfter: childDataSourceItem position) ifTrue: [
			^result + childDataSourceItem position].
		result := result + each childrenCount].
	
	^result + childDataSourceItem position
]

{ #category : #testing }
ClySpecDataSource >> hasMetaProperty: aPropertyClass [

	^self itemCursor hasMetaProperty: aPropertyClass
]

{ #category : #initialization }
ClySpecDataSource >> initialize [
	super initialize.
	query := ClyUnknownQuery instance.
	itemCursor := ClyClosedBrowserCursor instance.
	depth := 0.
	dirty := false.
	
	expandedItems := SortedCollection sortBlock: [ :a :b | a position < b position ]
]

{ #category : #copying }
ClySpecDataSource >> initializeForBrowserStateSpanshot [
	| copy |
	tablePresenter := nil.
	queryView := nil.	
	itemCursor := ClyClosedBrowserCursor instance.	
	lastFilteredDataSource := nil.
	dirty := false.
	
	copy := expandedItems collect: [ :each | 
		each copyForBrowserStateSnapshotOf: self ].
	expandedItems := copy asSortedCollection: [ :a :b | a position < b position ]
]

{ #category : #testing }
ClySpecDataSource >> isBasedOn: aQuery [

	^query = aQuery
]

{ #category : #testing }
ClySpecDataSource >> isBasedOnQueryOf: itemTypeClass [

	^query retrievesItemsOfType: itemTypeClass
]

{ #category : #testing }
ClySpecDataSource >> isClosed [
	^itemCursor == ClyClosedBrowserCursor instance
]

{ #category : #testing }
ClySpecDataSource >> isEmpty [
	^self itemCursor itemCount = 0
]

{ #category : #testing }
ClySpecDataSource >> isExpanded: aDataSourceItem [

	^expandedItems includes: aDataSourceItem 
]

{ #category : #testing }
ClySpecDataSource >> isInSameStateAs: anotherDataSource [

	(self isSameAs: anotherDataSource) ifFalse: [ ^false ].
	
	expandedItems size = anotherDataSource expandedItems size ifFalse: [ ^false ].
	^expandedItems allSatisfy: [ :myItem | 
		anotherDataSource expandedItems 
			detect: [ :anotherItem | myItem isSameAs: anotherItem ]
			ifFound: [ :anotherItem | 
				myItem childrenDataSource isInSameStateAs: anotherItem childrenDataSource ]
			ifNone: [ false ] ]	 
]

{ #category : #testing }
ClySpecDataSource >> isParentCollapsed [
	^self isParentExpanded not
]

{ #category : #testing }
ClySpecDataSource >> isParentExpanded [
	parentItem ifNil: [ ^true ].
	^parentItem isExpanded
]

{ #category : #testing }
ClySpecDataSource >> isParentRemoved [
	parentItem ifNil: [ ^false ].
	^parentItem isRemoved
]

{ #category : #testing }
ClySpecDataSource >> isRoot [
	^parentItem isNil
]

{ #category : #testing }
ClySpecDataSource >> isSameAs: anotherDataSource [

	self class == anotherDataSource class ifFalse: [ ^false ].
	
	^self isBasedOn: anotherDataSource query
]

{ #category : #accessing }
ClySpecDataSource >> itemCursor [
	dirty ifTrue: [ self runUpdate ].
	^itemCursor 
]

{ #category : #controlling }
ClySpecDataSource >> itemsChanged [
	"Method is called when underlying query result was changed.
	In that case we implement lazy updating 
	when we only mark data source as dirty 
	and defer actual update for future processing by next UI iteration.
	It allows to ensure only update of UI despite of multiple system changes
	when they are happen during single UI command.
	At the and it optimizes UI reaction on system changes and makes UI smooth.
	Notice that update (#runUpdate) can be forced by user 
	when he manually requests operations with data source.
	In that case deferred update is skipped 
	because dirty flag is reset during processing (look at #runUpdate)"
	dirty ifTrue: [ ^self ].
	dirty := true.
	UIManager default defer: [self runUpdate]
]

{ #category : #'context menu' }
ClySpecDataSource >> menuColumn: column row: rowIndex [
	
	^queryView menuColumn: column row: rowIndex
]

{ #category : #queries }
ClySpecDataSource >> newDataSourceMatching: anItemFilter [
	"IMPORTANT: DO NOT CALL IT FROM THE UI PROCESS"
	"Any data source instance should be closed after usage.
	Problem that filtered data sources are managed out of the application, internally inside FastTable.
	So this method is supposed to be called by fast table to create filtered data source 
	which will be not shared to any other users.
	And to close retrieved data source together with original one (self) it will keep reference to it.
	And every new filter request will close existing filtered data source"
	lastFilteredDataSource ifNotNil: [lastFilteredDataSource close].
	self isClosed ifTrue: [
		"This is hackish solution to the current fast table problem with filter process.
		Filter process is not managed by anybody 
		and will continue work after table is removed from the world"
		(Processor activeProcess == UIManager default uiProcess) ifTrue: [ 
			self error: 'Should not happens'].
		^Processor terminateActive].
	lastFilteredDataSource := self class on: (query filteredBy: anItemFilter).
	lastFilteredDataSource openOn: queryView.
	^lastFilteredDataSource
]

{ #category : #accessing }
ClySpecDataSource >> newSelectionWith: dataSourceItems [
	^ClyDataSourceSelection fromRoot: self items: dataSourceItems 
]

{ #category : #accessing }
ClySpecDataSource >> numberOfRows [
	^self itemCursor itemCount 
		+ (expandedItems detectSum: [ :each | each childrenCount ])
]

{ #category : #controlling }
ClySpecDataSource >> openOn: aQueryPresenter [
	
	self isClosed ifFalse: [ self close ].

	queryView := aQueryPresenter.	
	tablePresenter := aQueryPresenter table.
	itemCursor := query openBrowserCursorFor: self.
	dirty := false.
	
	expandedItems do: [:each | each childrenDataSource openOn: aQueryPresenter]
]

{ #category : #accessing }
ClySpecDataSource >> parentGlobalPosition [
	^parentItem ifNil: [ 0 ] ifNotNil: [ parentItem globalPosition ]
]

{ #category : #accessing }
ClySpecDataSource >> parentItem [
	^ parentItem
]

{ #category : #accessing }
ClySpecDataSource >> parentItem: anObject [
	parentItem := anObject
]

{ #category : #accessing }
ClySpecDataSource >> query [
	^ query
]

{ #category : #accessing }
ClySpecDataSource >> query: anObject [
	query := anObject
]

{ #category : #accessing }
ClySpecDataSource >> queryEnvironment [
	^query environment
]

{ #category : #accessing }
ClySpecDataSource >> queryResult [
	^self itemCursor queryResult
]

{ #category : #accessing }
ClySpecDataSource >> queryView [
	^ queryView
]

{ #category : #accessing }
ClySpecDataSource >> queryView: aQueryView [
	queryView := aQueryView
]

{ #category : #accessing }
ClySpecDataSource >> realElementAt: anIndex [

	^ (self elementAt: anIndex) browserItem
]

{ #category : #private }
ClySpecDataSource >> runUpdate [
	self isClosed ifTrue: [^self].
	dirty ifFalse: [ ^self ].
	
	dirty := false.
	itemCursor updateItemCache.
	self updateExpandingItems.
	queryView itemsChangedIn: self.
	self announceChanges
]

{ #category : #queries }
ClySpecDataSource >> searchText: aString [
	"we search only original elements"
	| found |
	found := self itemCursor moveToItemWhich: [ :each | 
		each name asLowercase beginsWith: aString asLowercase ].
	
	^found ifFalse: [ #() ] ifTrue: [ {self itemCursor position}]
]

{ #category : #accessing }
ClySpecDataSource >> toString: anItem [

	^anItem  name
]

{ #category : #'drag and drop' }
ClySpecDataSource >> transferFor: dataSourceItems from: aMorph [
	| selection passenger |
	selection := dataSourceItems first rootDataSource 
		newSelectionWith: dataSourceItems. "to get selection bound to last selected item. In FastTable last selected item is first in the list"

	passenger := queryView createDragPassengerFor: selection.
	
	^super transferFor: passenger from: aMorph
]

{ #category : #private }
ClySpecDataSource >> updateExpandingItems [
	self updateItems: expandedItems.
	expandedItems := expandedItems reject: [ :each | each isRemoved ]
]

{ #category : #private }
ClySpecDataSource >> updateItems: dataSourceItems [
	"I update given data source items with refreshed environment items	which belongs to same actual objects. If there is no actual object anymore for some of data source item I will put nil to it.
	Then users should correctly process updated items"
	| updatedItems |
	updatedItems := itemCursor findItemsWith: (dataSourceItems collect: #actualObject).

	dataSourceItems with: updatedItems do: [ :myItem :updatedBrowserItem | 
		myItem updateItemWith: updatedBrowserItem  ]
]

{ #category : #'drag and drop' }
ClySpecDataSource >> wantsDropElements: aPassanger type: type index: rowIndex [
	| dropTargetItem result |
	rowIndex = 0 | (rowIndex > self numberOfRows) ifTrue: [ ^false ].
	self dragTransferType == type ifFalse: [ ^false ].
	dropTargetItem := self elementAt: rowIndex.		
	result := queryView wantsDropPassenger: aPassanger at: dropTargetItem.
	
	result & dropTargetItem hasChildren ifTrue: [ dropTargetItem expand ].
	
	^result
]

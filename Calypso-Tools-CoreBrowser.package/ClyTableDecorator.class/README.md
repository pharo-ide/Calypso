I am a root of hierarchy of table decorators.
My subclasses are responsible for decoration table rows/cells.
Currently my subclasses are not supposed to be instantiated. All behaviour are on class side.
My subclasses must define in what browser context they should be active: 
- browserContextClass 
- wantsDecorateTableCellOf: aDataSourceItem
By default I return ClyUnknownBrowserContext and false to not break Calypso tools when new decorators is added but not implemented completelly.

Decoration should be implemented in following method:
- decorateTableCell: anItemCellMorph of: aDataSourceItem
It can modify morph font, color. It can add icons to morph. It can do anything which is possible to do with morph.
It is low level method. There is another method which receive context instance of browser:
	decorateTableCell: anItemCellMorph inContext: itemContext 
		self decorateTableCell: anItemCellMorph of: itemContext lastSelectedItem
Some subclasses can be interested in given context instead of just an item.

So when table is building multiple decorators can override same cell properties. To manage these overrides I introduce priority which specifies what decoration is more important. More important decoration is evaluated at last time which overrides equal properties from other decorations.

To enumerate decorators effectively I maintain SortedDecorators class variable. It allows enumerate decorators in priority order using same sorted collection any time. To reset and recompute this variable call 
	ClyTableDecorator resetDecorators.
During enumeration abstract decorators are skipped. By default I define abstract decorator as a class with subclasses. But it can be redefined in method #isAbstract. 

To be able control set of decorators per browser instance subclasses can be attached to concrete browser plugins.
Browser instance is created with specific set of plugins which restrict number of decorators which should affect browser tables.
To specify plugin following method should be overridden:
- browserPluginClass
By default any decorators is bound to ClyStandardBrowserPlugin
I am a root of hierarchy of table decorators.
My subclasses are responsible for decoration table rows/cells.
Currently my subclasses are not supposed to be instantiated. All behaviour are on class side.

Concrete decorators should be annotated with ClyTableDecorationStrategy annotation with context of items where table should be decorated:
	ClyAbstractClassTableDecorator class>>classDecorationStrategy
		<classAnnotation>
		^ClyTableDecorationStrategy for: ClyClassScope
Also decorators should decide what exact items they want decorate. They should implement the method:
	 wantsDecorateTableCellOf: aDataSourceItem
By default I return false to not break Calypso tools when new decorators is added but not implemented completelly.

Actual decoration logic should be implemented in following method:
- decorateTableCell: anItemCellMorph of: aDataSourceItem
It can modify morph font, color. It can add icons to morph. It can do anything which is possible to do with morph.
It is low level method. There is another method which receives context instance of the browser:
	decorateTableCell: anItemCellMorph inContext: itemContext 
		self decorateTableCell: anItemCellMorph of: itemContext lastSelectedItem
Some subclasses can be interested in given context instead of just an item.

When table is building multiple decorators can override same cell properties. To manage these overrides I introduce priority which specifies what decoration is more important. More important decoration is evaluated at last time which overrides equal properties from other decorations.
Enumeration order is implemented on annotation level. ClyTableDecorationStrategy defines special sorted registry for this.

Important notice. The actual priority is defined by my subclasses. But annotation extracts it and use it as own priority value in registry. 
It means that annotation registry should be updated if you modify or override priority methods in my subclasses. Now it should be done manually.
	ClyTableDecorationStrategy resetRegistry.
	
During enumeration abstract decorators are skipped. By default I define abstract decorator as a class which has subclasses. But it can be redefined in method #isAbstract. 

To be able control set of decorators per browser instance subclasses can be attached to concrete browser plugins.
Browser instance is created with specific set of plugins which restrict number of decorators which should affect browser tables.
To specify plugin following method should be overridden:
- browserPluginClass
By default any decorators is bound to ClyStandardBrowserPlugin
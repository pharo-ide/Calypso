controlling
itemsChanged
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
	[UIManager default defer: [self runUpdate]] forkAt: Processor activePriority - 1
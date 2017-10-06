I annotate table decorators (ClyTableDecorator subclasses) to define where decorator should be used, in what context of selected items.

For example following method will declare that classes in any browsers should be decorated with abstract class decorator:

ClyAbstractClassTableDecorator class>>classDecorationStrategy
	<classAnnotation>
	^ClyTableDecorationStrategy for: ClyClassScope
	
It only declares where to use decorator but decorator itself will define extra conditions to check that given item is actually abstract:
	annotatedClass wantsDecorateTableCellInContext: aBrowserItemContext
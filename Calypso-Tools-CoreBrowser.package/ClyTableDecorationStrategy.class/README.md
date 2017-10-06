I annotate table decorators (ClyTableDecorator subclasses) to define where decorator should be used, in what context of selected items.

For example following method will declare that classes in any browsers should be decorated with abstract class decorator:

ClyAbstractClassTableDecorator class>>classDecorationStrategy
	<classAnnotation>
	^ClyTableDecorationStrategy for: ClyClassScope
	
It only declares where to use decorator but decorator itself will define extra conditions to check that given item is actually abstract:
	annotatedClass wantsDecorateTableCellInContext: aBrowserItemContext
	
I sort my registered instances according to ascending priority. It is opposite to default order of annotation registry. 
Idea that most prioritized decorator should be able override visual effects from less prioritized decorators. And to achieve it I just enumerate instances in described order: asceding priority, which evaluates most prioritized decorator at last order.

Important notice. The actual priority is defined by decorator clases. I just retieve their value when class is annotated by me.
It means that my registry should reset manually if you modify priority methods in decorator classes
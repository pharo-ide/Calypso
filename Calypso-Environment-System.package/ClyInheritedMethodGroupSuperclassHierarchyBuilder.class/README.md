I am a builder of hierarchical view of all inherited method subgroups.
I arrange superclass items in following order: 
	- traits 
	- superclass
	- superclass traits 
	- superclass superclass 
	- ...

My task is build inheritance change from set of classes (not single class). That's why I need to think how to arrange items when two or more root classes has same superclass.
I am trying to avoid dublications of items. For this I move equal superclasses (or traits) to the end of list. 
Sometimes such approach can lead to strange inheritance order. But it happens only when I build hierarchy for multiple classes. It is not common case. Usually I work only with single class where such problem not exists.
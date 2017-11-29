I am a root of hierarchy of environment queries.
My subclasses implement specific logic how to retrieve particular set of environment items from given environment scope. 
Subclasses must implement method:
	- fetchContent: anEnvironmentContent from: anEnvironmentScope
It should fill given content with items fetched from given scope where given content is actual result of my evaluation (read below).
Usually my subclasses implement it by double dispatch to get specific behaviour for concrete type of content and scope. They redirect processing using:
	anEnvironmentScope fetchContent: anEnvironmentContent by: self
Look at subclasses for detailes.

Concrete form of retrieved items is described by my variable requestedContent. It is subclass of ClyEnvironmentContent which instances are supposed to represent my result.
I define method to create instances with this property:
	anEnvironmentQueryClass requestedContent: anEnvironmentContentClass
Usually my subclasses provide more suitable methods. For example: 
	ClyMessageSenders of: #(do:) as: ClySortedMethods

To evaluate me users ask environment scope for that:
	classesScope query: anEnvironmentQuery
There are other related objects (cursor, dataSource, content) which provide query interface but at the end I am always evaluated by some existing scope.
(This query method accepts any compatible object which define #asEnvironmentQuery conversion method. I implement it by returning self)

Scopes cache result of all evaluated queries (look ClyEnvironmentScope comment). It requires correct comparison methods in all my subclasses. Equality and hash methods should consider own and superclasses state. For example I use requestedContent variable to implement them.

Cached result requires maintainance: if related system change is happen then result should be recomputed. I detect it in method #isResult:affectedBy:. I allow subclasses to define simple #isResultCanBeAffectedBy: where they can ignore not related changes. And then I ask result is it affected by given change:

	isResult: anEnvironmentContent affectedBy: aSystemAnnouncement
		^(self isResultCanBeAffectedBy: aSystemAnnouncement)
			and: [ anEnvironmentContent isAffectedBy: aSystemAnnouncement]
			
For example ClyMessageSenders query asks given system change if affected method uses query selectors or not.

I provide #description method to be shown by tools with user friendly string. My subclasses override it for better results. Look at ClyMessageSenders for example.

Internal Representation and Key Implementation Points.

    Instance Variables
	requestedContent:		<ClyEnvironmentContent class>
			
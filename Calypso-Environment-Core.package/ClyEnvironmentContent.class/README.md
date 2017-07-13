My subclasses represent specific kind of environment content, typed collection of items, concrete view on enviroment. 
For example there are ClySortedClasses and ClyHierarchicallySortedClasses. Both are represent classes from given scope but structure of representation are different.
Subclasses specify position and depth of each item which belongs to them. In above example same class could have different position and depth inside different content.  

So my items are instances of ClyEnvironmentItem with position and depth inside me. Also I could extend items with arbitrary properties (ClyEnvironmentItemProperty). These properties can be used by tools to provide specific look&feel. 
Because properties are dynamic and extendable my subclasses usually not specify any of them but instead this task is delegated to environment plugins and only at time when items are requested by user. It provide optimization when properties are complex and require time to compute. Only requested items will resolve properties and only once.
To request items there are a couple of methods: 

- resolveItemsStartingAt: startIndex count: size
- resolveItemsStartingWhere: blockCondition count: size
- resolveAllItems
- findItemsWith: actualObjects
- findItemsWhich: aBlock 
- findItemsSimilarTo: sampleEnvironmentItems

They always return items with resolved properties as was said above. So returned items are always ready to use.

Also environment plugins are able to extend my own properties. They can annotate me with summary information about my items. For example SUnit plugin annotate method content with summary about tests. Then UI uses it to add specific buttons for test run. Following methods can be used for this:
-  addMetaProperty: aProperty
- hasMetaProperty: propertyClass

My subclasses are result of environment query in context of given scope. Queries create my instances using: 

	ClySortedClasses of: aNavigationEnvironment inScope: anEnvironmentScope

Using some delegation queries decide how to build requested content, from what type of objects.
Most trivial case is ClyAllItemsQuery which just ask given scope to build given content. Then scope asks content to build itself according to scope type.
For example ClySortedMethod can be built from classes or from method groups. And ClySortedMethods implements two methods for that: #buildFromClasses: and #buildFromMethodGroups:.
Look at #buildContent: implementors from ClyEnvironmentScope hierarchy. They decide what message to use to build given content.
Theoretically my subclasses could be built from any scope. But it is not needed to implement all cases. So my subclasses implement only meaningfull methods.
For example methods could be extracted from packages but there are no implementation for #buildFromPackages: in ClySortedMethods (it could be changed due to new requirements).

So queries are responsible to create my instances:

	content := query prepareResultOn: aNavigationEnvironment inScope: anEnvironmentScope
	
But from user point of view you can see many places where my subclasses are used in place of queries:

	scope query: ClySortedMethods.
	scope query: ClySortedClasses

Underhood classes are converted into ClyAllItemsQuery instances which then produce requested content and build it. (I define class side method #asEnvironmentQuery to achieve this).

I provide API to execute new queries over environment using my own query state:

- query: aQueryOrContentClass from: basisObjects
It executes new query from my items scope and given basis objects (which supposed to be some of my items).
This query could be explained as navigation to child content because my items will be parent of new retrieved content. For example:

	packages := scope query: ClySortedPackages.
	classes := packages query: ClySortedClasses from: { Point package. Collection package }.
	methods := classes query: ClySortedMethods from: { Point. Collection }.

My subclasses define method #itemsScope wo specify what kind of scope items are form. Also #itemsScope can be treated as type of items. It should return subclass of ClyEnvironmentScope.

- query: aQueryOrContentClass
It executes new query from my environment scope

- query: anEnvironmentQueryOrContent inNewScope: anEnvironmentScope
It executes new query from new scope	(which supposed to be based on basis of some of my items)
	
- queryInNewScope: anEnvironmentScopeClass
It executes my query but from new scope of same basis objects

- queryInScopeOf: newBasisObjects
It executes my query from same scope but with new basis

- more, look at queries protocol 


When environment which I represent is attached to system I receive message #handleSystemChange: for any change which occures with system.
I delegate processing to my bulding query which then could ask me #isAffectedBy:. My subclasses should implement this method. Usually they delegate question to environment scope for concrete type of object which they represent. For example ClySortedClasses can ask scope #includesClassesAffectedBy: aSystemChange.
Then scope itself can dispath message to announcement instance. For example ClyPackageScope can ask event for #affectsClassesDefinedInPackage:.

ClyEnvironmentChanged event is triggered by my annoucer using method #changedBy:. It marks items dirty (reset them) which force any following query to rebuild me.
When subscribed tool receives ClyEnvironmentChanged event it queries me again which rebuild my content and update view with updated information.

There are two methods for subscription:
- #subscribe:
- #unsubscribe:

#subscribe: will send #environmentChanged: to receiver when content is changed.

There two extra methods on class side which allow tools to work with me accordingly:

- #isExpandedHierarchy.
It marks content that it provide internal hierarchical structure. For example ClyHierarchicallySortedClasses defines it with true.
Tools could ask this information about content to show hierarchy with collapsing buttons.

- #isRecursive
It marks content that it is possible to retrieve same content from own items. For example ClySortedMethodGroups represent method groups which provide subgroups. These subgroups could also be retrived as ClySortedMethodGroups from scope of parent groups. So ClySortedMethodGroups define this method with true.
Tools could use this information to provide recursive dynamic tree view to navigate over single content.

And to repeat again because it is important method:
- #itemsScope 
It should be defined on instance side. But default implementation just delegates to class. 
This method specify what kind of scope items content is form. It can be treated as type of content items and should return subclass of ClyEnvironmentScope

Internal Representation and Key Implementation Points.

    Instance Variables
	announcer:		<Announcer>
	buildingQuery:		<ClyEnvironmentQuery>
	environment:		<ClyNavigationEnvironment>
	environmentScope:		<ClyEnvironmentScope>
	items:		<SequenceableCollection of<ClyEnvironmentItem>>
	metadata:	<ClyEnvironmentContentMetadata>
	accessGuard:	<Mutex>
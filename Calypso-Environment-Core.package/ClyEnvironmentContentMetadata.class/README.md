I represent metadata about ClyEnvironmentContent instance. I hold information about query which built it and in what scope. 

I provide suitable interface to analyze target content instance: 

	- itemScope. It returns items scope of target content (look at ClyEnvironmentContent comment for details)
	- isAboutContent: anEnvironmentContentClass. It checks if target content is kind of given class
	- isBuiltInEmptyScope. It checks that scope of building query was empty
	- isBuiltInScopeOfSingleObject. It checks that scope of building query was based on single object.
	- isBuiltInScopeOfMultipleObjects. It checks that scope of building query was based on multiple objects.

All these properties can be retrived from content itself. But idea to escape such communication in remote scenario. Metadata of content is transfered together with content cursor from server to client. And client can use it directly to retrive information without extra remote requests (in remote scenario content tis remote object).

You can ask me from content by simple message #metadata. For example: 

	sortedMethods metadata

Or create me manually: 
	
	ClyEnvironmentContentMetadata forContentBuiltBy: anEnvironmentQuery from: anEnvironmentScope

I also provide collection of content properties which are populated by environment plugins during content build process:
- addProperty: anEnvironmentItemProperty
- getProperty: propertyClass
- hasProperty: propertyClass
This properties allow annotate content with summary information about items.For example SUnit plugin annotate method content with information about tests.
	
Internal Representation and Key Implementation Points.

    Instance Variables
	buildingQuery:		<ClyEnvironmentQuery>
	queryScope:		<ClyEnvironmentScope class>
	queryScopeSize:		<Integer>
	itemScope:		<ClyEnvironmentScope class>
	properties:	<OrderedCollection of: <ClyEnvironmentItemProperty>>
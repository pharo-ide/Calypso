I am a classic four panes Smalltalk browser.

The instance side and class side mode is based on #metaLevelScope class. It affects the query scope which is used to show methods and method groups.

The method groups and variables mode is based on #methodGroupQuery: 
- when user switches to variables the groups query is replaced by ClyAllVariables query based on same scope.
- when user switches to groups the variables query is replaced by ClyAllMethodGroups query based on same scope.

Also methodGroupQuery is used to keep current method visibility level:
- when user enables some superclass visibility it just adds to the current query scope.

In addition I implement special logic for extending classes and default visibility of traits:

- when extending class is selected (which is gray in class view) I switches to its one meta level.
- when extending class is selected I add at the top of list the extending package method group

Internal Representation and Key Implementation Points.

    Instance Variables
	packageView:		<ClyQueryView>
	classView:		<ClyQueryView>
	methodGroupView:		<ClyQueryView>
	methodView:		<ClyQueryView>
	metaLevelScope:		<ClyMetaLevelClassScope>
	methodGroupQuery:		<ClyQuery>
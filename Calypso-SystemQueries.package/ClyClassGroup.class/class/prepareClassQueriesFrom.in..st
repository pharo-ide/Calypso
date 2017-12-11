accessing
prepareClassQueriesFrom: classGroups in: aNavigationEnvironment

	^ classGroups collect: [ :each | each classQuery ]
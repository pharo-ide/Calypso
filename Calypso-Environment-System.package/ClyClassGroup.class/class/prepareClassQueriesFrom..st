accessing
prepareClassQueriesFrom: classGroups

	^ classGroups collect: [ :each | each createClassQuery ]
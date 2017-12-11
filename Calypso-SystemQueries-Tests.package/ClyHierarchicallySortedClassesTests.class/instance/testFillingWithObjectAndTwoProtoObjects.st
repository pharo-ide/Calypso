tests
testFillingWithObjectAndTwoProtoObjects

	queryResult fillWith: { Object. ProtoObject. ProtoObject }.
	
	self assertItems: {ProtoObject. 0. Object. 1}
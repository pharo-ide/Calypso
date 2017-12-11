scope creation
createScopeFrom: aClassScope withLocalScope: aLocalScopeClass
	"We just search first most priority annotation 
	which class defines inherited scope.
	So plugin packages can introduce and override inherited scope by annotating 
	factory classes with greater priority value"
	self registeredInstancesDo: [ :each | 
		^each createScopeFrom: aClassScope withLocalScope: aLocalScopeClass].
	
	self error: 'No scope is found which defines inherited class scope'
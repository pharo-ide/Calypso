scope creation
createInheritingScopeFrom: aClassScope
	"We just search first most priority annotation 
	which class defines inherited scope. Such classes must also define inverse inheriting scope.
	So plugin packages can introduce and override inherited scope by annotating 
	factory classes with greater priority value"
	self registeredInstancesDo: [ :each | 
		^each createInheritingScopeFrom: aClassScope].
	
	self error: 'No scope is found which defines inheriting class scope'
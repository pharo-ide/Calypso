compilation
noteCompilationOf: aSelector meta: isMeta
	"we should resort given class when it redefine priority"
	isMeta & (aSelector == #priority) ifTrue: [ 
		self sortedDecorators remove: self ifAbsent: [  ].
		self sortedDecorators add: self]
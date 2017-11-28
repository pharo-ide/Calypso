meta level
allClassesRelatedTo: aClass do: aBlock

	self classesRelatedTo: aClass do: [:each | 
		each isObsolete ifFalse: [aBlock value: each].
		self allClassesRelatedTo: each do: aBlock]
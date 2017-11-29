meta level
allClassesRelatedTo: aClass do: aBlock

	self classesRelatedTo: aClass do: [:each | 
		each isObsolete ifFalse: [
			self metaLevelsOf: each do: aBlock].
		self allClassesRelatedTo: each do: aBlock]
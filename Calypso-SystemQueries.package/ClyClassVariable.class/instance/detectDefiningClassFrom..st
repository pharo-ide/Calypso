accessing
detectDefiningClassFrom: anUserClass

	self detectDefiningClassFrom: anUserClass ifAbsent: [ 
		self error: 'Cant find the class defining variable' ]
navigation
restrictMethodVisibilityBy: aClassScope

	self changeMethodGroupQueryBy: [
		methodGroupQuery restrictedByScope: aClassScope]
tests
testMethodVisibilityCheck

	group classes: { Object }.
	self deny: group isMethodsVisible.

	group classes: { Object. ProtoObject }.
	self assert: group isMethodsVisible
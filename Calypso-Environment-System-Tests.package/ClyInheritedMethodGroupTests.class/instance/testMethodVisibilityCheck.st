tests
testMethodVisibilityCheck

	group classScope: { Object }.
	self deny: group isMethodsVisible.

	group classScope: { Object. ProtoObject }.
	self assert: group isMethodsVisible
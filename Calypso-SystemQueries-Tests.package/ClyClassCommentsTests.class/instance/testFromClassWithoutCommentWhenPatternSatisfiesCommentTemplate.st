tests
testFromClassWithoutCommentWhenPatternSatisfiesCommentTemplate

	| noCommentClass substring |
	noCommentClass := self class superclass.
	self deny: noCommentClass hasComment.
	substring := noCommentClass comment copyFrom: 4 to: 30.
	
	query pattern: (ClySubstringPattern with: substring).	
	self queryFromScope: ClyClassScope of: noCommentClass.
	
	self assert: resultItems isEmpty
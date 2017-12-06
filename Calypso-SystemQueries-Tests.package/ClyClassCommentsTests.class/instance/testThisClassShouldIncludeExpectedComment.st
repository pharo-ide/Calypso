tests
testThisClassShouldIncludeExpectedComment

	self assert: (self class comment 
		includesSubstring: self expectedClassCommentSubstring caseSensitive: false)
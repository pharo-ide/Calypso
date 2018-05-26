testing
requiresNewDesiredSelection

	^(self selectedTools allSatisfy: [ :each | desiredSelection includes: each class]) not
testing
isTestAction: aButton	

	(aButton isKindOf: IconicButton) ifFalse: [^false].

	^aButton actionSelector == #runTestForAMethod:notifying: 
		and: [ aButton arguments first isTestMethod]
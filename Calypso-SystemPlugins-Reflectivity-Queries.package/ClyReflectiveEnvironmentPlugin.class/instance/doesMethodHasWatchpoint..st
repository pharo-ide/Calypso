item decoration
doesMethodHasWatchpoint: aMethod

	^Watchpoint allWatchpoints anySatisfy: [ :watchpoint |
		watchpoint compiledMethod == aMethod]
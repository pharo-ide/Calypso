system changes
isResult: aQueryResult affectedBy: aSystemAnnouncement
	"We can not compute affect on critiques by any kind system change
	because critiques are compoted by some external system
	So without real knowledge we can only update critiqies after any system change.
	It can of course lead to very poor system performance because critic computation is slow process
	and triggering it after every system change can slow down system a lot.
	So instead we just reset given aQueryResult silently. So users should update views manually"
	aQueryResult forceLazyRebuild.
	
	^false "and we return false to prevent result observers to be notified"
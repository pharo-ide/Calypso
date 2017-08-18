instance creation
open
	<script>
	| browser |
	Smalltalk garbageCollect. "to remote process garbage".
	browser := self new.
	browser showProcessesIn: ClySystemNavigationEnvironment currentImage.
	browser open.
	^browser
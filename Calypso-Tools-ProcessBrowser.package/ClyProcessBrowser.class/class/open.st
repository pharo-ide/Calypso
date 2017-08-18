instance creation
open
	<script>
	| browser |
	Smalltalk garbageCollect. "to remove process garbage".
	browser := self new.
	browser showProcessesIn: ClySystemNavigationEnvironment currentImage.
	browser open.
	^browser
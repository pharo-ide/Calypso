operations
executeCommand

	[ super executeCommand ]	on: Exception fork: [:exc | exc pass ]
building
build

	exerciserComponents := model tasks collect: [:each |
		| taskExerciser |

		taskExerciser := self buildExerciseComponentForTask: each.
		taskExerciser parent: self.
		taskExerciser.		
	]
actions
checkAllExcept: aComponent
	(exerciserComponents copyWithout: aComponent) do: [:each |
		each check]
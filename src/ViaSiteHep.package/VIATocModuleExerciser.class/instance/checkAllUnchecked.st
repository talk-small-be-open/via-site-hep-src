actions
checkAllUnchecked
	exerciserComponents do: [:each | each isUnchecked ifTrue: [each check]]
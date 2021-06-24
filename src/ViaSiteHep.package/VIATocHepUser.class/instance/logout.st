actions
logout
	| response |
	
	response := self class callMethod: 'POST' data: nil headers: {'Authorization: Bearer ', apiToken} endpoint: '/api/auth/logout'.

"	response isDictionary ifFalse: [ self signalError: 'Invalid data from API' ].
	response at: 'error' ifPresent: [:text | self signalError: ('Error from API: ', text) ]"
as yet unclassified
getUserData: aToken

	| response |

	response := self callMethod: 'GET' data: nil headers: {'Authorization: Bearer ', aToken} endpoint: '/api/auth/user'.

	response isDictionary ifFalse: [ self signalError: 'No user data' ].

	^response at: 'data'
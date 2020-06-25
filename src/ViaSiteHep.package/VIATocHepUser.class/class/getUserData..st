as yet unclassified
getUserData: aToken

	| response |

	response := self callMethod: 'GET' data: nil headers: {'Authorization: Bearer ', aToken} endpoint: 'V1/customers/me'.

	^response
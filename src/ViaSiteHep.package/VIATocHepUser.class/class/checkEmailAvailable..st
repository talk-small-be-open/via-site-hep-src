as yet unclassified
checkEmailAvailable: anEmailString
	| postData response |

	postData := {
		'customerEmail'->anEmailString.
		'websiteId'->1.
	} aD.
	
	response := self postData: postData endpoint: 'V1/customers/isEmailAvailable'.

	^response = true
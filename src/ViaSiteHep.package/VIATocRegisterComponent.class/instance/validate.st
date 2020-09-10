as yet unclassified
validate
	| beInvalid recaptchaResponse remoteIp |

	"OPTIMIZE: Use VIAUserRegistrationValidator"

	beInvalid := [:text | self errorMessage: text t. ^false].

	antibotCode ~= antibotCodeOrigin ifTrue: [ beInvalid value: 'register:error:youAreNotHuman'].

	(VIAHelper isValidEmail: email) ifFalse: [beInvalid value: 'register:error:emailFormat'].

"This check will be done at the hep-Server"
"	(self wd findUserByEmail: email) ifNotNil: [beInvalid value: 'register:error:emailAlreadyUsed']."

	firstName ifBlank: [beInvalid value: 'register:error:firstName'].
	password ifBlank: [beInvalid value: 'register:error:passwordFormat'].

"This check will be done at the hep-Server"
"	password size < 6 ifTrue: [beInvalid value: 'register:error:passwordFormat']."

	password = passwordConfirmation ifFalse: [beInvalid value: 'register:error:passwordConfirmation'].

	invitationCode ifNotBlank: [
		invitationCommand ifNil: [ beInvalid value: 'register:error:invitationCodeNotFound' ]
	].

	recaptchaResponse := self requestContext request at: 'g-recaptcha-response' ifAbsent: nil.
	remoteIp := self requestContext request remoteAddress.

"	self ifProduction: [
		(VIAHelper verifyReCaptchaResponse: recaptchaResponse ip: remoteIp) ifFalse: [
			beInvalid value: 'register:error:captcha' ]]."

	termsAccepted = true ifFalse: [beInvalid value: 'register:error:termsNotAccepted'].


	^true
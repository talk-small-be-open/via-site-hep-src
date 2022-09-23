as yet unclassified
tryLoginFromExternalCallback: aRequest website: aWebsite
	aRequest at: 'code' ifPresent: [ :c |
		^ [ self loginOauthCode: c website: aWebsite request: aRequest ]
			on: VIATocHepUserError do: [ :error |
				nil
			]
	].

	^ nil
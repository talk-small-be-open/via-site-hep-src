as yet unclassified
callMethod: aMethod data: aDictionaryLike headers: aHeadersCollection endpoint: anEndpointPath
	| postData response cmd tempFile url |

	url := self db propertyAt: #hep:login:apiUrl.
	
	aDictionaryLike ifNotBlank: [
		postData := aDictionaryLike asDictionary.
		tempFile := VIATempFile json
			write: postData asJson;
			close;
			yourself ].

	cmd := String streamContents: [ :s |
		s << 'curl -X '.
		s << aMethod asUppercase.
		s << ' --silent --header "Content-Type: application/json; charset=UTF-8" --header "Accept: application/json" '.

		aHeadersCollection ifNotBlank: [
			aHeadersCollection do: [:each |
				s << ' --header "'.
				s << each.
				s << '" ']
		].
	
		postData ifNotBlank: [
			s << ' -d @'.
			s << tempFile filePath.
			s space ].

		s << url.
		s << anEndpointPath.
	].

	response := VIAHelper fromJson: (MCLPlatform runShellCommand: cmd).

	"Fehler abfangen"
	response isDictionary ifTrue: [
		response at: 'message' ifPresent: [ :m | VIATocHepUserError signal: m ]].
	
	tempFile ifNotNil: [tempFile delete ].
	
	^ response
as yet unclassified
switchToUser
	| user |
	user := self chooseFrom: self wd users sortedBySortKey labels: [:each | each displayName truncate: 50 ] title: 'Choose user'  default: nil.
	
	user ifNotNil: [
		self session switchToUser: user.
		self close].
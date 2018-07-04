other
secondsToExpire
	"Answer the number of remaining seconds to expire"

	^(expiration time asSeconds - Time now asSeconds)
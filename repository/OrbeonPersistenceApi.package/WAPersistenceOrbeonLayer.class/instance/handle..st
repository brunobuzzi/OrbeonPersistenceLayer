delete this
handle: aRequestContext
	"Handle a request described by aRequestContext. Do not override this method; instead subclass #handleFiltered: to allow filters to process the request first."

	"self halt."

	aRequestContext push: self during: [ self filter handleFiltered: aRequestContext ]
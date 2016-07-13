other
installAlmostOutOfMemoryHandler
	"The receiver install an AlmostOutOfMemory handler to manage out of memory situations in Gem processes.
	See: MCPlatformSupport class>>installAlmostOutOfMemoryStaticHandler:"
   | handler commitThreshold |

   commitThreshold := 65.
   handler := AlmostOutOfMemory addDefaultHandler: [ :ex | self halt ].
   SessionTemps current at: #'AlmostOutOfMemoryStaticException' put: handler.
   System signalAlmostOutOfMemoryThreshold: commitThreshold
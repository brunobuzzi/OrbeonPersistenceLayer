[![Build Status](https://travis-ci.org/brunobuzzi/OrbeonPersistenceLayer.svg?branch=master)](https://github.com/brunobuzzi/OrbeonPersistenceLayer)
GemStone/S persistence layer for Orbeon
=======
The manuals of this Orbeon Persistence Layer can be found here:<br>
https://bpmflow.gitbook.io/project/orbeon-integration/orbeon-persistence-layer-for-gemstone-s

This **Orbeon Persistence Layer** is an implementation of **REST Services** on the top of GemStone/S (http://www.gemtalksystems.com) to store **Orbeon Forms** (http://www.orbeon.com) natively in **GemStone/S Database** (a NON SQL database).<br>
To install GemStone/S:<br>
https://github.com/GsDevKit/GsDevKit_home

The Documentation in this here is about the **REST Services** implmenentation in **GemStone/S** and is **NOT** an official documentation of Orbeon Persistence Layer. The official Documentation of Orbeon Persistence Layer can be found [here](http://doc.orbeon.com/form-runner/api/persistence/index.html).

The following diagrams are just to get a general idea how to implement an Orbeon Persistence Layer. There are NOT detailed implementation diagrams. The purpose is to list the services that Orbeon call for each functionallit, not to show the internals of the GemStone/S implmentation (for this you can download the code) :) <br><br>
The following Diagrams are grouped by Orbeon functionality.<br>
[Service Diagrams](https://bpmflow.gitbook.io/project/orbeon-integration/orbeon-persistence-layer-for-gemstone-s/service-diagrams)

The following link show all services that MUST be implemented for a complete Orbeon Persistence Layer. You will notice that various services can be implemented as one because of it's service path. But at implementation level we choose to split them by funcionality not by path.<br>
[Service Methods](https://brunobuzzi.gitbooks.io/orbeon-persistence-layer/content/service_methods.html)
<br><br>
**Persistence Layer Configuration Options**<br>
There are a lof of options that can be configured in this persistence layer such as: deferred processing, path for attachments, search type and audit options.<br>
[Options Description here](https://bpmflow.gitbook.io/project/orbeon-integration/orbeon-persistence-layer-for-gemstone-s/configuration-manual)
<br><br>



[![Build Status](https://travis-ci.org/brunobuzzi/OrbeonPersistenceLayer.svg?branch=master)](https://github.com/brunobuzzi/OrbeonPersistenceLayer)
# GemStone/S persistence layer for Orbeon
The repository contains two projects:
* The Persistence Layer to store OrbeonForms in GemStone/S
* The Backoffice Web Application that has some extra funcionalities

## Persistence Layer
The manuals and complete documentation of **Orbeon Persistence Layer for GemStone/S** can be found here:<br>
https://bpmflow.gitbook.io/project/orbeon-integration/orbeon-persistence-layer-for-gemstone-s

**Orbeon Persistence Layer for GemStone/S** is an implementation of **REST Services** on the top of **GemStone/S** (http://www.gemtalksystems.com) to store **Orbeon Forms** (http://www.orbeon.com) natively in **GemStone/S database** (a NON SQL database).<br>
To install GemStone/S:<br>
https://github.com/GsDevKit/GsDevKit_home

In order to implement your own persistence layer check the official Documentation of Orbeon [here](http://doc.orbeon.com/form-runner/api/persistence/index.html).

## Backoffice Web Application
The **Backoffice Web Application** has NO relation with **Orbeon Web Application** is an addon to the **Persistence Layer** for **GemStone/S**. If you click to view or edit an **Orbeon Form** it will redirect you to **Orbeon Web Application**.<br>
It has some useful functionalities:
* Create Charts (using Highcharts) based on **Orbeon Forms** stored in **GemStone/S**.
* **GemStone/S** configuration options.<br>

**Orbeon Forms - Main Chart Page**
![Orbeon](https://github.com/brunobuzzi/OrbeonPersistenceLayer/blob/master/wiki/orbeon-main.png)<br><br>
**Orbeon Forms - Pie Chart**
![Orbeon](https://github.com/brunobuzzi/OrbeonPersistenceLayer/blob/master/wiki/orbeon-chart-1.png)<br><br>
**Orbeon Forms - Heatmap Chart**
![Orbeon](https://github.com/brunobuzzi/OrbeonPersistenceLayer/blob/master/wiki/orbeon-chart-2.png)<br><br>
**Orbeon Forms - Spline Chart**
![Orbeon](https://github.com/brunobuzzi/OrbeonPersistenceLayer/blob/master/wiki/orbeon-chart-3.png)<br><br>
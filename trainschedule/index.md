---
layout: default
title: Eric Daugherty's XML Train Schedule
---

XML Train Schedule Server
{:.title}

This project is not actively being maintained and schedules and applications may be outdated.
The [Google Transit Feed Specification (GTFS)](http://code.google.com/transit/spec/transit_feed_specification.html) project
now accomplishes the original goals of this project.

Introduction
{:.header}

The Train Schedule project is currently a simple project to define and convert
train schedules into a common XML format. This format enables the information
to be used more easily by many other applications.

If you are looking for a ready to use schedule for the [TrainSched](http://trainsched.sourceforge.net)
palm application, they can be downloaded [here](#Stylesheets)

Currently, this project consists of an [XML Schema](#Schema) definition, a Java program to parse the
[Chicago Metra](http://www.metrarail.com) Train Schedules into [XML](#Schedules), and an
[XSL Stylesheet](#Stylesheets) used to generate a database for the
[TrainSched](http://trainsched.sourceforge.net) palm application.

The current goal of this project is to collect as many Schedules as possible in
XML that conforms to the schema, and to find as many uses for them as possible.

Please [email](mailto:eric@ericdaugherty.com) me if you are willing to help
with this goal, or would like to see a specific schedule or application supported.

### Schedules
{:#Schedules}

Currently, only the [Chicago Metra](http://www.metrarail.com) Train Schedules
are available. However, additional
schedules can and will be added once a need is identifies and the appropriate conversion
tool is written.

Chicago Metra

- [Burlington Northern Sante Fe (BNSF)](bnsf.xml)
- [Milwaukee District North](mdn.xml)
- [North Central Service](ncs.xml)
- [Union Pacific West](upw.xml)
- [Union Pacific Northwest](upnw.xml)

### Schema
{:#Schema}

This schema defines the standard format that all the XML schedules must conform to.
By defining a standard schema, we create a common data format that can be used by
many different applications. This enables great reuse and is important in allowing
this effort to scale.

The XML Schema can be viewed or downloaded [here](trainschedule.xsd)

### Stylesheets
{:#Stylesheets}

Once a standard data format is defined, XSL Stylesheets can be created to
convert the data into usable formats.

Currently, the only converstion available is an XSL Stylesheet that converts
the schedule into a csv file that can be used
to generate a database for the [TrainSched](http://trainsched.sourceforge.net)
Palm application. This application allows users to quickly view the available trains
between two given stops on a given day.

The Stylesheet used to perform the conversion can be found [here](trainsched.xsl)

After the XML schedule is processed by the Stylesheet, the resulting file is almost ready
to be converted by the trainsched tool. The only additional change is that the index values
in the resulting file must be edited (the stylesheet inserts ? marks).

Databases have been created for the [Chicago Metra](http://www.metrarail.com)
trains and can be downloaded here:

- [Burlington Northern Sante Fe (BNSF)](bnsf.pdb)
- [Milwaukee District North](mdn.pdb)
- [North Central Service](ncs.pdb)
- [Union Pacific West](upw.pdb)
- [Union Pacific Northwest](upnw.pdb)

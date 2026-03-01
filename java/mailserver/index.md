---
layout: default
title: Eric Daugherty's Java Email Server
keywords: Eric Daugherty EricDaugherty.com Java mail email server SMTP POP3 POP
description: Java Email Server is an open source Java SMTP and POP3 e-mail server.
ad: 5212883964
---

Java Email Server
{:.title}

{% include jes-navbar.html %}

Introduction
{:.header #Introduction}

Java Mail Server is a Java SMTP and POP3 e-mail server. This
project was inspired by and based on the [CRSMail](http://crsemail.sourceforge.net/)
project written by Calvin Smith. This project exists for everyone who is
interested in running their own email server quickly and easily.

Current Version
{:.header}

The current version of Java Email Server is now hosted at
[SourceForge](http://javaemailserver.sourceforge.net/). Please
refer to that page for all release information and documentation regarding the current version.

For more information on the change, read [this blog post](http://blog.ericdaugherty.com/2011/03/java-email-server-gets-new-home.html).

1.x Version
{:.header}

This page continues to host the 1.x development branch, which is in Maintenance Mode.

The goal of JES is to provide an easy to use and reliable
email server that can be quickly and easily setup. JES attempts
to provide a powerful server using the minimal number of configuration
settings and project size.

Using JES as a testing tool? There is now an [Eclipse Plug-In for JES](http://jesplug-in.sourceforge.net/). It allows you to start, stop, and configure JES from Eclipse.

If you are ready to start using JES, please see the Download and Install
sections below for instructions on downloading and configuration JES. The binary release,
and the source code are available for download from
the [Download](#Download) section.

Version 1.x is licensed under the [GNU General Public License](license.html).

You can email me at [eric@ericdaugherty.com](mailto:eric@ericdaugherty.com) for 1.x related questions.

Interested in this history of JES? Check out these blog posts:
[History](http://blog.ericdaugherty.com/2008/01/java-email-server-history.html),
[Version 2.0 Branch](http://blog.ericdaugherty.com/2008/01/java-email-server-20-branch.html), and
[Status and Future](http://blog.ericdaugherty.com/2008/01/java-email-server-status-and-future.html), and
[Java Email Server Gets a New Home](http://blog.ericdaugherty.com/2011/03/java-email-server-gets-new-home.html).

Download
{:.header #Download}

JDK 1.4 is supported by Version 1.6.1 and older, and JDK 1.3 is supported by JES 1.4 and older.

Version 1.6.1

Server - [jes-1.6.1.zip](http://prdownloads.sourceforge.net/javaemailserver/jes-1.6.1.zip?download)
<br/>
Source Code and JavaDocs - [jes-1.6.1-src.zip](http://prdownloads.sourceforge.net/javaemailserver/jes-1.6.1-src.zip?download)

Install
{:.header #Install}

To install and run this mail server, complete the following steps:

Install a Java JDK or JRE version 1.4 or greater ([java.sun.com](http://java.sun.com)).
<br/>
Expand the distribution archive into the desired directory.
<br/>
Modify the included script files for your local file system (if necessary).
<br/>
Edit the mail.conf, user.conf and log.conf files. See the [Configuration](configuration.html) page for details.
<br/>
Run the mail server script file.

JES can be installed as a Windows NT service. A batch file is included in
the bin directory of this distribution. To install JES as a service, open
the batch file and edit the properties to match your local system. You can
then install and uninstall the service using the -install and -uninstall
command line parameters. Once the system is installed, it will be started
by default the next time the computer is restarted. To start the service
the first time, you can type 'net start JavaEmailServer'.

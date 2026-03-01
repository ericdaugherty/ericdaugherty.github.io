---
layout: default
title: C# Email Server (CSES)
keywords: Eric Daugherty EricDaugherty.com C# Email Mail Server Open Source
description: Eric Daugherty's C# Email Server
ad: 3347074744
---

C# Email Server (CSES)
{:.title}

{% include cses-navbar.html %}

Introduction
{:.header #Introduction}

Current release: [0.3](#Download)

The C# Mail Server is a C# port of the
[Java Email Server (JES)](http://www.ericdaugherty.com/java/mailserver). JES is
an established email server targeted at small centrally maintained
installations. The C# Mail Server runs on Windows .NET 1.1 and
[Mono](http://www.go-mono.net).

CSES is a project to provide the same feature set to the .NET platform.
However, in addition to the features of JES, CSES provides individual
reusable components that other applications can use to provide email
functionality.

The current release of CSES provides the SMTP Server component. This
component allows a program to accept incoming emails and process them using
user defined logic. Please see the [Developers Guide](developers.html)
for more information on using this component.

The current release of CSES does not implement a full SMTP/POP3 email
server. However, these features are expected to be provided in upcoming
releases.

Download
{:.header #Download}

To download source, binaries, and documentation for the current version:

Version 0.3 - [cses-0.3.zip](http://prdownloads.sourceforge.net/cses/cses-0.3.zip?download)
<br/>
Version 0.3 Source Code - [cses-0.3-src.zip](http://prdownloads.sourceforge.net/cses/cses-0.3-src.zip?download)

CSES was written and tested using Windows .NET 1.1. It has also been tested
with [Mono](http://www.go-mono.net) (Version 0.25 on RedHat Linux 7.3).
Please [email me](mailto:eric@ericdaugherty.com) if you have any questions.

Install
{:.header #Install}

The current relese of CSES only provides a SMTP Server component. This component
can be included in other projects to enable SMTP message handling. Please refer
to the [Developer Guide](developers.html) for instructions on using this component.

Related Projects
{:.header #related-projects}

[Java Email Server (JES)](http://www.ericdaugherty.com/java/mailserver) - Java version of CSES.
<br/>
[netDumpster](http://netdumbster.codeplex.com/) - .Net port of the Dumpster SMTP server built using code from CSES.

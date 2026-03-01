---
layout: default
title: C# Email Server (CSES) - Developer Guide
keywords: Eric Daugherty EricDaugherty.com C# Email Mail Server Open Source
description: Eric Daugherty's C# Email Server
---

C# Email Server (CSES) - Developer Guide
{:.title}

{% include cses-navbar.html %}

SMTP Server
{:.header}

The SMTP Server component (ces.smtp.server.dll) provides the ability
for programs to implement a SMTP Server and process the incoming email
in custom code. To use this component your code needs to do the following:

- Implement the EricDaugherty.CES.SmtpServer.IMessageSpool interface
- (Optional) Implement the EricDaugherty.CES.SmtpServer.IRecipientFilter interface
- Create an instance of EricDaugherty.CES.SmtpServer.SMTPProcessor and start it as a thread.

Refer to the documentation included with the distribution for details on method
usage parameter information.

The SMTP Server component can be downloaded from the
[Getting Started](gettingstarted.html) page.

SourceForge
{:.header}

This project is hosted by [SourceForge](http://www.sourceforge.com). All downloads
(available from the [Getting Started](gettingstarted.html) page)
are hosted by SourceForge, as well as the source control. You can browse the
[CVS Repository online](http://cvs.sourceforge.net/cgi-bin/viewcvs.cgi/cses). You can also browse the
[SourceForge Project Homepage](http://www.sourceforge.com/projects/cses) for CSES.

Build
{:.header}

The source distribution and CVS both contain an [NAnt](http://nant.sourceforge.net/index.html)
build script. This build script should work without any modifications once NAnt is installed on your machine. All
required libraries are included in the source distribution.

The source distribution can be found from the
[Getting Started](../) page

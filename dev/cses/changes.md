---
layout: default
title: C# Email Server (CSES) - Change Log
keywords: Eric Daugherty EricDaugherty.com C# Email Mail Server Open Source
description: Eric Daugherty's C# Email Server
---

C# Email Server (CSES) - Change Log
{:.title}

{% include cses-navbar.html %}

Version 0.3 (07/13/2004)
{:.header}

Fixed bug that caused infinite loop. Caused when clients disconnect improperly.

Added ability to easily pull Header values from SMTPMessage and SMTPMessagePart
Duplicate header keys (ex: Received) are not supported. The last header key wins.

Fixed Regex of mail addresses in SMTPProcessor.

Fixed text replacement in user overridable SMTP Messages.

Added ability to shutdown SimpleServer cleanly.

Version 0.2 (04/16/2004)
{:.header}

Added .chm API Documentation to binary release.

Fixed bug parsing email addresses in SmtpServer.

Fixed SimpleServer to listen on all IP addresses instead of just the loopback address.

Version 0.1 (11/12/2003)
{:.header}

Initial Relese of SMTP Server component.

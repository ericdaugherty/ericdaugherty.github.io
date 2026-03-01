---
layout: default
title: Eric Daugherty's Java Email Server
keywords: Eric Daugherty EricDaugherty.com Java mail email server SMTP POP3 POP
---

Java Email Server - Change Log
{:.title}

{% include jes-navbar.html %}

JES 2.x is now hosted [here](http://javaemailserver.sourceforge.net/).
Refer to that site for its release notes.

Version 1.6.1 (02/02/2008)
{:.header}

Updated mail.conf to remove extra trailing semicolin from "smtpdelivery.threshold=10" Thanks to Siegfried Goeschl
(siegfried.goeschl@it20one.at).

Updated mail.sh to accept a configuration directory as a command line parameter. Thanks to Siegfried Goeschl
(siegfried.goeschl@it20one.at).

Updated bulid.xml to build with JDK version 1.4 (minimum needed for codebase). Thanks to Siegfried Goeschl
(siegfried.goeschl@it20one.at).

Fixed error in SMTPRemoteSender introduced in release 1.5. Server would fail to look up MX entries when
not using a default SMTP server. Thanks to Philipp Hagemeister for tracking this issue down.

Version 1.6 (11/18/2007)
{:.header}

Server adds FROM address if message is received without one (unknown@example.com). Server would
accept the messages but throw errors when it tried to deliver them: "Unable to parse the address from the stored file."
Thanks to Matthew Lohbihler of Serotonin Software ([serotoninsoftware.com](http://serotoninsoftware.com)) for providing this fix.

Added socket timeout to SMTP processor sockets. This may address issues with threads getting hung in socket.read calls.
Thanks to Matthew Lohbihler of Serotonin Software ([serotoninsoftware.com](http://serotoninsoftware.com)) for providing this fix.

Version 1.5 (08/05/2007)
{:.header}

Added the ability to use a default SMTP server that requires authentication. This
can be useful if your ISP prohibits outbound connections on port 25 and forces you
to authenticate with their default SMTP server. Thanks to Matthew Lohbihler of
Serotonin Software ([serotoninsoftware.com](http://serotoninsoftware.com)) for adding this feature.

Version 1.4 (07/14/2004)
{:.header}

Added the option to limit the maximum size for incoming messages. The
configuration parameter is in megabytes (2^10) and defaults to 5.

Added the ability to specify a port number for the outgoing SMPT servers.
Thanks to Philippe Reverdy [http://preverdy.free.fr/preverdy/utilities.html](http://preverdy.free.fr/preverdy/utilities.html)

Added new configuration option to allow relaying based on 'from' email
address. This can be used to easily allow relaying for users
based their address or an entire domain. However, this can be risky
and should be used with cation as there is no protection from others
'spoofing' the from address to send spam.
Thanks to Philippe Reverdy [http://preverdy.free.fr/preverdy/utilities.html](http://preverdy.free.fr/preverdy/utilities.html)

Version 1.3.4 (02/12/2004)
{:.header}

Added a maximum delivery attempts configuration property before a message fails.
Message re-delivery attempt intervals are exponentially increased, up to a maximum
interval of 17 hours (1024 minutes).
Thanks to [Al Lieb](mailto:ootletemp-jes@yahoo.com).
Thanks also to Andrei Makalski.

Miscellaneous code cleanup:
Cleaned up SMTPSender try/catch block.
Added logic to handle null result of DNS Lookup.
Fixed issue with MX entry sorting.
Thanks to [Al Lieb](mailto:ootletemp-jes@yahoo.com).

Version 1.3.3 (11/24/2003)
{:.header}

Addes a new header "X-DeliveredTo: admin@mydomain.com" to locally delivered email.
This allows users who use multiple local addresses that are delivered to a single
mail box to track which user the message was addressed to.
Thanks to Shmuel Siegel.

Fixed error with delivery address resolution. SourceForge Bug #848417
The resolution of the local address was also incorrect and has been fixed.
Thanks to Shmuel Siegel.

Fixed handling of blank listenAddress. Previous version default to the localhost loopback,
while the new version uses the simpler ServerSocket constructor.
Thanks to Shmuel Siegel.

Version 1.3.2 (11/18/2003)
{:.header}

Added test DNS lookup utility and additional site documentation.
Thanks to [Martin Cordova](mailto:mcordova@megasoft.com.ve).

Added ability to bind JES to a single IP address.

Resolved an issue with the loading of forward addresses from the
user.conf file.

Forward Addresses are now resolved when the message is received.
Previously, message delivery to forwarded addresses could be
unpredictable of one of the multiple forward addresses failed.

Added better logging to SMTPSender class

Version 1.3.1 (10/16/2003)
{:.header}

The login scheme was broken when the username was saved
in the configuration file in uppercase. This is now fixed.

Fixed issue that caused a configuration error when the
default smtp server property was set.

Version 1.3 (10/16/2003)
{:.header}

Utilize Jakarta commons-logging to remove required dependency
of Log4j. Default Logger just writes to the console and also
can write to a file. Log4j is still used by default. Log4j
configuration can now be controlled using log.conf, and updated
while the server is running.
Support for NT Service! A batch file has been included in the bin
directory to install JES as a NT Service.
Thanks to [Paul Thordarson](mailto:ptt@tgbsoftware.com)

Reworked configuration. Configuration is now split into three
files: mail.conf, user.conf, log.conf. mail.conf and user.conf
files will be reloaded automatically after a change while the server
is running. The user.conf file can be edited with plaintext passwords,
and they will be hashed and resaved by the server automatically. This removes
the need for the GUI configuration tool, which is now gone.
Added support for multiple SMTP Relay rules. Can now enable POP Before SMTP
and IP based relaying individually or together. IP Based relaying now also
supports wildcards. These settings can be changed without restarting the server.

The SMTP Server would accept the data command even if the
client had not specified any valid recipients. This has been fixed.

Version 1.2.4 (09/02/2003)
{:.header}

Added entry: Delivery.smtprelaytype=NONE to the default configuration
file. This addresses bug: 768385.
Thanks to mariusz_grey.

Upgraded DNSJava library to 1.3.3.
Enhanced DNS lookups to order MX Entries.

Added Socket Timeout for SMTP Delivery. This addresses bug: 783119.

Version 1.2.3 (07/01/2003)
{:.header}

Added client IP address based SMTP Relaying. Users can now
configured a list of IP addresses that are allowed to relay
mail. Thanks to Scott Schrecken

Fixed JavaDoc tags and included JavaDoc comments in release.

Updated UNIX/Linux shell scripts.

Version 1.2.2 (2/7/2003)
{:.header}

Resolved Linux compatability issue. Incorrect line termination
was being used by the println method.
Thanks to B0NFiRE ([www.fdns.net](http://www.fdns.net)).

Version 1.2.1 (12/30/2002)
{:.header}

Integrated newest release of DaughertyLib (2.0) to enable JDK 1.4 Support.
Improved implementation of the shutdown() method.
Thanks to [Siegfried Goeschl](mailto:siegfried.goeschl@it20one.at).

Added runtime hook to call the shutdown method when the VM is shutdown
(CRTL-C from the command line).
Thanks to [Siegfried Goeschl](mailto:siegfried.goeschl@it20one.at).

Version 1.2 (5/20/2002)
{:.header}

Resolved NullPointerException in DNSService that occured when no MX Entries
were found.

Now allow empty MAIL FROM: command.

Resolved case sensitivity in email addresses.

Added hook to shutdown server gracefully. Static shutdown() method added
to Mail class. However, this feature is not currently exposed. Users may
wrap the Mail class to provide their own shutdown triggers.

Version 1.1 (10/29/2001)
{:.header}

Fixed Config Tool. Default User Combo Box did not refresh when a new user is added.

Fixed SMTP Sender. Was unable to handle servers with multi-line responses.

Fixed POP Server. did not respond to RSET command.

Added implementation of optional UIDL and TOP commands in the POP server.

Version 1.0 (7/6/2001)
{:.header}

Initial Release

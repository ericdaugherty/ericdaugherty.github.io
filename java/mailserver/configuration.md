---
layout: default
title: Eric Daugherty's Java Email Server
keywords: Eric Daugherty EricDaugherty.com Java mail email server SMTP POP3 POP
---

Java Email Server - Configuration
{:.title}

{% include jes-navbar.html %}

JES 2.x is now hosted [here](http://javaemailserver.sourceforge.net/).
Refer to that site for its configuration information.

Configuration
{:.header #Configuration}

The configuration for JES is managed using three configuration files.  These files,
[mail.conf](#mail.conf), [user.conf](#user.conf)
and [log.conf](#log.conf) should all be updated by loading them with
a text editor.  Each of these files contains comments that explain the available
properties and their impact on the server.  Each of these files is explained
in the following sections.

Additionally, several common issues are discussed at the end of this page.  These
include: [DNS Server Issues](#DNS+Server+Issues),
[Remote Delivery Issues](#Remote+Delivery+Issues), and
[Default Mailbox](#Default+Mailbox)

mail.conf
{:.header #mail.conf}

The mail.conf file contains the main settings for JES.  These settings include
the ports to use, the number of threads, and the global security settings.  By
default, JES will only relay email sent from the same computer that JES is running
on.  However, additional IP addresses can be added.  Also, POP Before SMTP can
be enabled, which allows users who have authenticated with the POP3 server to
relay SMTP messages for a period of time (10 minutes by default).

JES will check this file for updates and reload them while the server is running.
This allows changes to the server without having to restart it.  However, not all
settings can be changed dynamically.  The port numbers and execute threads can only
be changed while the server is stopped.

user.conf
{:.header #user.conf}

The user.conf file contains the information for all the local users.  The
header contains information about how to add and update users.  The passwords
stored in this file are hashed, but if you wish to add a user or change a password,
you can edit and save the file using plain text passwords.  JES will detect the update,
load the file, hash the passwords, and resave the file.  This will insure that
plain text passwords are not stored in the file, but allows the file to be
edited using a text editor.

JES will check this file for updates and reload the user information while the
server is running.  This allows users to be added or updated without having to
restart JES.  The plain text passwords are hashed during this process.

log.conf
{:.header #log.conf}

By default, JES uses [log4j](http://jakarta.apache.org/log4j) to perform all logging.
The log.conf file is loaded as a log4j.properties file, so you can modify this file
to match your preferred configuration.  Log4j will monitor this file for updates, and
reload it while the server is running, allowing you to change the log level to receive
more or less log information without restarting the server.

While log4j is used by default, it is not required.  You may remove the log4j.jar
from the lib directory to disable log4j.  If this occurs, JES will depend on
[Jakarta's commons-logging](http://jakarta.apache.org/commons/logging) library to
write out log files.  If log4j is disabled, log.conf contains a property that
you can set to determine the log level for the log messages.  Be default, the
messages are written to the console via System.err.

DNS Server Issues
{:.header #DNS+Server+Issues}

JES uses [DNSJava](http://www.dnsjava.org) to perform DNS lookups when
delivering email to remote servers.  Some users have reported issues with the
automatic detection of the DNS Server on non-English versions of Windows.

In order to avoid problems locating the IP address of your DNS server,
it is better to explicitly include the system property -Ddns.server=xxx.xxx.xxx.xxx
in the files mail.bat and ntservice.bat. This property should contain the IP address
of your name server, which can be obtained on Windows 2000/XP with this command
(from a DOS console): nslookup.  This overrides the automatic lookup mechanism used
by [DNSJava](http://www.dnsjava.org).

A simple DNS Lookup utility class has been included in the lib directory, and
a lookup.bat batch file has been included in the bin directory.  This utility
can be used to test DNS Server lookups without having to use run JES server.
To use this test file, execute the lookup.bat script with a DNS Server address
and a domain to lookup.  For example:

```
c:\jes\bin\lookup.bat 192.168.0.1 hotmail.com
Performs a DNS Lookup using against a DNS server for a domain.
usage: lookup.bat (dns server address) (domain to lookup)
Results:
hotmail.com:
hotmail.com.            424     IN      MX      5 mx4.hotmail.com.
hotmail.com.            424     IN      MX      5 mx1.hotmail.com.
hotmail.com.            424     IN      MX      5 mx2.hotmail.com.
hotmail.com.            424     IN      MX      5 mx3.hotmail.com.
```

Remote Delivery Issues
{:.header #Remote+Delivery+Issues}

Some users have reported issues while attempting to deliver email to remote
servers.  These issues are generic setup issues and not specific to JES, but they
are covered here for your convenience.

Some servers require a valid address in the "From" field.  This is done to protect
against SPAM.  If an email is failed to be delivered, make sure the "From" address
is valid.

Some servers require that the originating SMTP server must be identified with
a valid domain.  This can be controlled with the "domains" property in the
mail.conf file.  If you don't use a valid domain name then you may experience
rejected emails from several SMTP servers.

It is highly recommended that you set the log level to "debug" in the log.conf
file when testing this software for the first time, this way you will obtain
a very detailed trace log, very useful to diagnose problems and bugs.

Default Mailbox
{:.header #Default+Mailbox}

JES allows email to a local domain to be delivered to a default address.  However,
if the email itself does not contain the explicit 'to' address (such as SPAM or
mailing list email, etc.), it may be difficult to determine which address a message
was sent to.

JES provides an SMTP header for all locally delivered email to address this issue.  The
header: "X-DeliveredTo: &lt;address&gt;" is appended with the exact 'to' address
specified.

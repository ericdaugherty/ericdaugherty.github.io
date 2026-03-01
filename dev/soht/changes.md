---
layout: default
title: SOHT (Socket over HTTP Tunneling)
---

SOHT Socket over HTTP Tunneling
{:.title}

{% include soht-navbar.html %}

Change Log
{:.header}

Version 0.6.2 (11/19/2008)
{:.header}

(Java Client only) Applied patch to enable HTTPS connections and ignore certificate warnings. Thanks to [lowem](http://www.post1.net/lowem/entry/http_tunnelling) for providing the patch.

Version 0.6.1 (3/26/2007)
{:.header}

(Java Client only) Fixed bug that prohibited connections to high range ports (over 32767). Thanks to Danilo for debugging the issue and providing the fix.

Version 0.6 (09/14/2004)
{:.header}

Added Internationalization (i18n) to the web application admin pages. Currently suports English and French. Thanks to Mathieu Lecarme.

Added a configuration parameter 'Block Size' to allow administrators to configure the maximum size of each respose to a client READ command (in kilobytes).

Fixed the implementation of the stateless network interaction. Improves performance. Thanks to [Paul Thordarson](mailto:ptt@tgbsoftware.com).

Version 0.5 (06/29/2004)
{:.header}

Fixed the closing HTML tag for the login page. Caused compile error in Tomcat 5. Added SOCKS (4 and 5) support to the client to enable seamless browsing using
the SOHT Java Client. Thanks to SOHT's newest developer Craig Setera.

Version 0.4.2 (02/24/2004)
{:.header}

Added the ability to specify a username and password for the proxy server.
Thanks to [Andrei Moisseev aka AVM](mailto:avm@umail.ru).

Version 0.4.1 (01/24/2004)
{:.header}

Fixed a bug in the configuration parsing that caused the
proxy settings to be ignored.
Thanks to [Alberto Pires de Oliveira Neto](mailto:alberto@ecredi.com.br).

Version 0.4 (11/26/2003)
{:.header}

Implemented the readwrite command. Allows for stateless connections between the client and server.

Version 0.3 (09/16/2003)
{:.header}

Implemented an improved protocol implementation. All printable bytes are now written as a single byte, and non
printable bytes are written using their hex code.

Version 0.2 (09/09/2003)
{:.header}

Initial Release of .NET Client.

Added user administration and user security check.

Added user security check.

Added the ability to configure an HTTP Proxy server to the Java Client.

Version 0.1 (08/22/2003)
{:.header}

Initial Release

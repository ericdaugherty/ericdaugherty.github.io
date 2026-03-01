---
layout: default
title: SSH Web Proxy
---

SSH Web Proxy
{:.title}

{% include sshwebproxy-navbar.html %}

Change Log
{:.header}

Version 0.5 (03/18/2004)
{:.header}

Added 'restricted' mode where users are not authenticated
with SSHWebProxy but can only connect to a single host. Most
useful to provide remote access to the locahost via a browser.

Added key based authentication. Currently, only OpenSSH and SSHTools key formats are supported.

Version 0.4 (01/01/2004)
{:.header}

Added DOCTYPE to all HTML pages to indicate HTML 4.01 Strict. This
resolves the layout issues with IE for the shell screen.

Fixed the behaviour of the 'enter' key on the shell page to execute
the writeline button while pressed in the textbox.

Fixed Buffer pop-up display for IE.

Version 0.3 (12/08/2003)
{:.header}

Added display of entire buffer for Shell.

Added refresh button to shell page.

Added connection cleanup for sessions that time out or are invalidated.

Added display of cursor location.

Current Connections label is only displayed when at least one connection exists.

Version 0.2 (11/22/2003)
{:.header}

Added (partial) VT100 Terminal Emulation.

Added license header to source files.

Version 0.1 (11/19/2003)
{:.header}

Initial Release.

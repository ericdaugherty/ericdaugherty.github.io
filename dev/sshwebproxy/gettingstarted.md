---
layout: default
title: SSH Web Proxy
---

SSH Web Proxy
{:.title}

{% include sshwebproxy-navbar.html %}

Getting Started
{:.header}

Download
{:.header}

To download source, binaries, and documentation for the current version:

Version 0.5 - [sshwebproxy-0.5.zip](http://prdownloads.sourceforge.net/sshwebproxy/sshwebproxy-0.5.zip?download)
<br>
Version 0.5 Source Code and JavaDocs - [sshwebproxy-0.5-src.zip](http://prdownloads.sourceforge.net/sshwebproxy/sshwebproxy-0.5-src.zip?download)

SSHWebProxy was written and tested using Sun's JDK 1.4 and
[JBoss 3.2](http://www.jboss.com).  It should work on all Servlet containers
that implement version 2.3 or greater of the Servlet specification.
SSHWebProxy makes use of the [J2SSH](http://3sp.com/products/sshtools/j2ssh/j2ssh.php)
libraries that are specific to JDK 1.4, and will not work on older versions.

Modes of Operation
{:.header}

SSHWebProxy has two modes of operation, 'normal', and 'restricted'.  The 'normal'
mode of operation allows individual users to be configured to access the system.  Once they are
granted access, they may use create an SSH Connection to any host.

The 'restricted' mode of operation allows anyone to create an ssh connection to one
host.  There is no additional security applied beyond the authentication handled by
the host.

Normal Mode - Install and Configuration
{:.header}

To install SSHWebProxy, simply extract the sshwebproxy.war from the binary
download and deploy it on your Servlet container.

The SSHWebProxy requires very minimal configuration.  There are two possible
modes of operation: normal and local.  Normal mode allows users to be   Normal mode just requires
the usernames and passwords for users allowed
to use the system.  The default username and password is sshwebproxy.

It is highly recommended that SSHWebProxy be deployed using https.  If
SSHWebProxy is used over standard http, all communication will be insecure,
defeating the purpose of SSH.

The usernames and passwords are stored in a properties file, which is required
to use the system.  By default, the server will copy the properties file
(sshwebproxy.properties) to the default directory, and will update it with
encrypted passwords when it is loaded.

The default directory may be different for every Servlet container.  Most likely,
it is the directory that you started the Servlet container from.

To specify a properties file location other than the default directory,
add a command line parameter to the start script of the application server.
The command line parameter should be:

```
-Dsshwebproxy.properties=<file location>
```

If you specify a location for the properties file, you must make sure that a file
exists at that location. If not, the server will not start. A sample properties
file is included with this distribution.

The properties are loaded automatically by the application every time the file is changed.
Therefore, users can be added or edited while the application is deployed without having
to restart or redeploy the application.

Restricted Mode - Install and Configuration
{:.header}

To install SSHWebProxy, simply extract the sshwebproxy.war from the binary
download and deploy it on your Servlet container.

In restricted mode, the only configuration neccessary is the host that all users
are restricted to.  In this mode, the SSHWebProxy application will not prompt the
users to authenticate but will just connect them directly to the target host (and the
host will authenticate them).

To run in restricted mode, a command line parameter must be added to the
start script of the application server.  The command line parameter should be:

```
-Dsshwebproxy.restricted=<hostname>
```

In many cases, the restricted mode will be used to limit connections to the local
server.  In this case, the property would be:

```
-Dsshwebproxy.restricted=localhost
```

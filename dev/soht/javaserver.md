---
layout: default
title: SOHT (Socket over HTTP Tunneling)
---

SOHT Socket over HTTP Tunneling
{:.title}

{% include soht-navbar.html %}

Java Server
{:.header #java-server}

The Java Server can be downloaded as a binary distribution or
a source distribution.

[Java Server 0.6](http://prdownloads.sourceforge.net/telnetoverhttp/soht-java-server-0.6.zip?download)
<br/>
[Java Server Source 0.6](http://prdownloads.sourceforge.net/telnetoverhttp/soht-java-server-0.6-src.zip?download)

This distribution contains a .WAR file that may be deployed in any
J2EE compliant Servlet container. If you wish to use all the default
values, you can simply deploy the WAR and begin using it.

The server requires a properties file to function properly. Be default,
the server will copy the properties file (soht.properties) to the default
directory, and will update it with any configuration changes made using
the Administration User Interface. The default directory is the directory
that the application server was started from. This may not be the directory
the script was run from, as several application server start scripts change
the directory before starting the server.

To specify a properties file location other than the default directory, add
a command line parameter to the start script of the application server. The
command line parameter should be:

```
-Dsoht.properties=<file location>
```

If you specify a location for the properties file, you must make sure that a
file exists at that location. If not, the server will not start. A sample
properties file is included with this distribution.

The properties are loaded and saved automatically by the application, so any
formatting and comments in the properties file will be lost.

By default, the SOHT server writes log messages to the server
container's console. If you wish to change the logging configuration,
you need to edit the properties file.

The Server's admin pages have been internationalized (i18n). Currently only
English and French are supported. If you are interested in providing an additional
language, please contact me.

Once the server is deployed, it will be accessible by clients. Please refer
to the documentation for the individual clients on their usage.

The Sever provides a web interface to modify configuration parameters. No
changes should be made directly to the file while the server is running.
Any changes made may be lost because the administration tool overwrites this
file when configuration values are changes using the user interface. The user
interface should be accessible at "http://&lt;yourhost&gt;:&lt;yourport&gt;/soht"
by default.

The administration web interface requires a password to access. The default value
of this password is 'soht'. The password should be changes immediately upon deployment.

The main configuration that should occur is to require logins for connections to the
server. If this feature is not enabled, anyone with a SOHT client will be able to connect
to your server and proxy their connections!

The administration web interface allows you to define users and change their passwords. Also
users can change their own passwords via the administration login page.

Some users have reported that they had to set the property "TOMCAT4_SECURITY" to "no" in order to
get SOHT working on Tomcat 4. This does not seem to be a problem in Tomcat 5.

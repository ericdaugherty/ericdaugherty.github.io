---
layout: default
title: SOHT (Socket over HTTP Tunneling)
---

SOHT Socket over HTTP Tunneling
{:.title}

{% include soht-navbar.html %}

Java Client
{:.header #java-client}

The Java client can be downloaded as a binary distribution or
a source distribution.

[Java Client 0.6.2](http://prdownloads.sourceforge.net/telnetoverhttp/soht-java-client-0.6.2.zip?download)
<br/>
[Java Client Source 0.6.2](http://prdownloads.sourceforge.net/telnetoverhttp/soht-java-client-0.6.2-src.zip?download)

To install the client, create a directory and extract the contents
of the zip file into that directory.

The client uses a properties file to map local ports to remote
hosts. A sample file has been included. Please modify this
file to suit your needs.

The client is packaged as executable .JAR file. You can start it with
the following command:

```
java -jar soht-client-<version>.jar
```

where &lt;version&gt; matches the current version you are using. You must
either have a soht.properties file in your current directory or specify one
as an argument, such as:

```
java -jar soht-client-<version>.jar c:\soht.properties
```

Once the mappings are configured and the client is started, you can
begin using your client applications. Make sure the clients are pointed
at localhost using the proper port. For example, if you setup a mapping
from local port 1000 to a remote telnet host, you would telnet to localhost on port 1000.

If you are using a SOHT server that requires a login, specify the username and password
in the properties file, as well as setting the server.loginrequired property to true.

If you use a HTTP Proxy server to access the internet, you can configure the
client to use the HTTP Proxy using the soht.properties file.

If you would like to use the SOCKS Proxy server feature you must enable it in
the propeties file. To use this with your web browser, set the 'SOCKS Host'
setting to localhost:1080 (assuming you use the default port).

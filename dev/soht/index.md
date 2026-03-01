---
layout: default
title: SOHT (Socket over HTTP Tunneling)
keywords: Eric Daugherty EricDaugherty.com Firewall Tunneling Socket HTTP SOCKS
description: Eric Daugherty's SOHT (Socket over HTTP Tunneling)
ad: 6421203503
---

SOHT Socket over HTTP Tunneling
{:.title}

{% include soht-navbar.html %}

Introduction
{:.header #Introduction}

Current Version: 0.6.x (Individual components versioned separately)

Welcome to the SOHT project. The goal of this project is to provide
and easy to use tool that enables all types of socket communication
through an HTTP Proxy server. This tool is useful for users who are
behind a restrictive firewall and wish to access external servers
that use protocols other than HTTP. Possible uses are:

- Web Browsing (Bypass logging, access restricted sites)
- POP3/SMTP/IMAP Email clients
- Telnet/SSH clients

This tool consists of two separate components. A server, which must be deployed
on a Java Servlet container (A .NET server is also planned), and a client, which
is run on the local machine and connects to the server via HTTP. There are Java
and .NET versions of the client, so the client can be run on nearly any platform.

A SOCKS 4 and 5 Proxy Server has been integrated into the most recent version of
the [Java Client](javaclient.html). This provides an very easy
way to bypass any local web proxy restrictions and logging.

If you would like to be able to SSH from anywhere using just your web browser,
you should check out my [SSHWebProxy](http://www.ericdaugherty.com/dev/sshwebproxy/) project.
This project provides a pure html
SSH client that can be used from any web browser without installing any client software.
It is limited to SSH and is not as flexible as SOHT, but it may be a good solution
if you just want occasional SSH access.

### Getting Started
{:#GettingStarted}

The documentation is broken down by component. You will need at least one client
and one server.

#### Servers

[Java Server](javaserver.html)

#### Clients

[Java Client](javaclient.html)
<br/>
[.NET Client](dotnetclient.html)

If you want to get started quickly, you can just download the files
using the links below. Each binary distribution contains a README file provides
instructions on installing the component. The source distributions can be downloaded
from the specific component's documentation page.

[Java Server 0.6](http://prdownloads.sourceforge.net/telnetoverhttp/soht-java-server-0.6.zip?download)
<br/>
[Java Client 0.6.2](http://prdownloads.sourceforge.net/telnetoverhttp/soht-java-client-0.6.2.zip?download)
<br/>
[.NET Client 0.4](http://prdownloads.sourceforge.net/telnetoverhttp/soht-dotnet-client-0.4.zip?download)

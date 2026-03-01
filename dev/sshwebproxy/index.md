---
layout: default
title: SSH Web Proxy
keywords: Eric Daugherty EricDaugherty.com SSH HTML Web Java
description: Eric Daugherty's SSH Web Proxy
ad: 3313327125
---

SSH Web Proxy
{:.title}

{% include sshwebproxy-navbar.html %}

Introduction
{:.header}

Current release: [0.5](gettingstarted.html)

SSHWebProxy is a Java Servlet application that enables users to
access SSH Shell sessions and SSH File Transfer sessions using
a web browser. All client interaction uses pure HTML, so it
can be used from anywhere. SSHWebProxy is simply an HTML SSH Client.

SSHWebProxy is targeted at people who have access to an always-on Internet
connection and are capable of running a Java Servlet container. SSHWebProxy
was developed using [JBoss](http://www.jboss.com), but should be compatible
with any Servlet container.

SSHWebProxy supports a partial implementation of VT100 terminal emulation,
and has been tested with vi. I am looking for ways to improve this and would
appreciate any feedback. If you have feedback or are interested in working
on this (or any other features), please [let me know](mailto:web@ericdaugherty.com).

If you are ready to start using SSHWebProxy, please see the
[Getting Started](gettingstarted.html) section
for instructions on downloading and configuring SSHWebProxy.

---
layout: default
title: Eric Daugherty's Simple Mail Processor
keywords: Eric Daugherty EricDaugherty.com Simple Mail Processor Email
description: Simple Mail Processor is a Java library that allows developers to quickly and easily add the ability to process incoming emails to an application.  Simple Mail Processor is an SMTP server that handles the low level details allowing you to focus on your business functinonality.
---

{% include simplemailprocessor-navbar.html %}

Simple Mail Processor is a Java library that allows developers to quickly and easily add the ability to process incoming emails to an application. Simple Mail Processor is an SMTP server that handles the low level details allowing you to focus on your business functinonality.

Using Simple Mail Processor is easy. Here is a quick example of basic usage:

- Download Simple Mail Processor and add it to your ClassPath
- Implement the MessageProcessor interface, which consists of a single Method: `void processMessage(EmailMessage emailMessage);`
- Configure and start the server. It can run embedded, or as a seperate server (a seperate server requires the use of JMS or other cross process tools). Starting the sever can be as easy as:

```java
SMPServer server = new SMPServer(new YourMessageProcessor());
server.start();
```

That's all it takes to get started. Every time an email is received, your method will be called with a Java Object representation of the received message. Simple Mail Processor does provide a rich seat of features and configuration options to support scalable applications, but remains easy to use right away.

Pricing
{:.subtitle}

You can start using Simple Mail Processor with the [limited use version](pricing/#development) today.

[Full versions](pricing/#full) are available at reasonable prices. See our [Pricing Guide](pricing/) for details.

---
layout: default
title: Eric Daugherty's Simple Mail Processor Download
keywords: Eric Daugherty EricDaugherty.com Simple Mail Processor Email Download
---

{% include simplemailprocessor-navbar.html %}

Download this version to begin developing today. This version is limited to 100 emails per execution. See our [pricing page](/simplemailprocessor/pricing/) for details on purchasing a full version.

Instructions and examples can be found in the [Getting Started](../documentation#GettingStarted) section of the [User's Guide](../documentation).

Binary
{:.subheader}

Download version no longer available.

The following dependencies need to be included in the class path:

- [Apache Commons Codec](http://commons.apache.org/codec/) - [Download](http://commons.apache.org/codec/download_codec.cgi)
- [Slf4j](http://www.slf4j.org/) - [Download](http://www.slf4j.org/download.html)

[Slf4j](http://www.slf4j.org/) is used for logging. You will need to include slf4j-api-&lt;version&gt;.jar and one (and only one) of the following jars in your classpath:

- slf4j-nop-&lt;version&gt;.jar
- slf4j-simple-&lt;version&gt;.jar
- slf4j-log4j12-&lt;version&gt;.jar
- slf4j-jdk14-&lt;version&gt;.jar
- slf4j-jcl-&lt;version&gt;.jar

See the [slf4j bindings documentation](http://www.slf4j.org/manual.html#binding) for details.

Maven
{:.subheader}

The Development version is also avaialble from the Golden Innovations Maven Reository. Add the following to the pom.xml file:

```xml
<repositories>
  <repository>
    <id>goldeninnovations.com</id>
    <url>http://maven.goldeninnovations.com/</url>
  </repository>
</repositories>

<dependencies>
  <dependency>
    <groupId>com.goldeninnovations</groupId>
    <artifactId>simplemailprocessor</artifactId>
    <version>1.0-SNAPSHOT</version>
  </dependency>
  <dependency>
    <groupId>org.slf4j</groupId>
    <artifactId>slf4j-nop</artifactId>
    <version>1.5.8</version>
  </dependency>
</dependencies>
```

The slf4j-nop dependency can be replaced with another slf4j implementation.

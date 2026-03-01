---
layout: default
title: SOHT (Socket over HTTP Tunneling)
---

SOHT Socket over HTTP Tunneling
{:.title}

{% include soht-navbar.html %}

Protocol
{:.header #Protocol}

The SOHT protocol is implemented on top of the HTTP protocol.  All activity
is originated by the client, which uses an HTTP POST action to send requests
and data to the server.

Command Sequence
{:.header #CommandSequence}

This section outlines the available commands and actions, and defines
the sequence that they occur.  The specific attributes of each command
are detailed in their respective sections later in this document.

All communication is initiated by the client.  The first command to be executed
is the [open command](#OpenCommand).  The client sends this
command to the server to initiate the connection
to the remote host.  This command contains all the information required
to create the connection, as well as optional information such as security
information if the SOHT server has security enabled.  The server will respond by
indicating that the connection was successful, or that an error occurred, including
a brief description of the error.

Once the [open command](#OpenCommand) is successfully executed,
the client may initiate a read or write command, or the readwrite comand.
The order of the read and write commands is not important, but you must choose
between using the read and write commands, and the readwrite command.

The [read command](#ReadCommand) opens a channel for the server to
write information read from the
remote host to the local client.  This is accomplished by holding open the HTTP response
until the proxied connection is closed.  This means that the read command should only
be executed once for a specific connection.  It will stay open the entire time.

The [write command](#WriteCommand) allows data read by the local
client to be sent to the remote host.
This is accomplished using an HTTP POST action, where the data of the POST contains
the information to be written to the remote host.  The server does not need to respond
to a write command.  If the data is posted successfully, it is assumed that it was
written to the remote host.

The [readwrite command](#ReadWriteCommand) is an alternative to
the individual read and write commands.  This command performs both actions using
a single HTTP request.  This is known as the 'stateless' connection, because it
does not require that the read http connection stay open for the life of the proxied
connection.

The following sections detail each of these commands in detail, including the specific
parameter names and acceptable values.

Command Parameters
{:.header #CommandParameters}

All communication is originated by the client in the form of an HTTP POST.  All data is passed
to the server as request parameters.  For example, the Java client uses code similar to the
following to open a new connection:

```java
OutputStreamWriter streamWriter =
	new OutputStreamWriter( urlConnection.getOutputStream() );
BufferedWriter out = new BufferedWriter( streamWriter );
out.write("action=open");
out.write("&");
out.write("host=" + remoteHost);
out.write("&");
out.write("port=" + String.valueOf( remotePort ) );
out.flush();
out.close();

// Post the request to the server.
urlConnection.connect();
```

The C# client uses similar code:

```csharp
//Setup connection to HTTP Service
WebRequest request = WebRequest.Create( uri );
request.Method = "POST";
request.ContentType = "application/x-www-form-urlencoded";
StringBuilder parameters = new StringBuilder();
parameters.Append( "action=open" );
parameters.Append( "&" );
parameters.Append( "host=" );
parameters.Append( _host );
parameters.Append( "&" );
parameters.Append( "port=" );
parameters.Append( _hostPort );
byte[] encodedParams = Encoding.UTF8.GetBytes( parameters.ToString() );
request.ContentLength = encodedParams.Length;

//Open Connection
Stream requestStream = request.GetRequestStream();
requestStream.Write( encodedParams, 0, encodedParams.Length );
requestStream.Close();
```

The action parameter is required for every request.  This indicates to the server how it should
deal with the request.  All other parameters depend upon the action type.

Open command
{:.header #OpenCommand}

The open command creates a new connection to a remote host and assigns a unique
id to that connection.  The required parameters are:

- action
  - The action command must be set to "open" for this command.
- host
  - The host parameter specifies the remote host to connect to.
  - Both IP addresses (127.0.0.1) or valid DNS names (www.yahoo.com) are acceptable
- port
  - The port parameter specifies the port to connect to on the remote host.

The required parameters specify the basic amount of parameters required to setup a connection.
The optional parameters allow additional information to be given to the server about how
the connection should be setup, or allow the server to limit new connections
based on security constraints.  Some servers may be configured to require any or all of the
optional parameters.  The following parameters are supported by
all the official clients and servers

- username
  - A valid username
  - If the SOHT server requires a login, this parameter must be passed with a valid password.
- password
  - A plain text password
  - If the SOHT server requires a login, this parameter must be passed with a valid username.

The server will respond with a return code, and will also return a connection id if
the connection was successful.

If the connection setup was successful, the server will respond with "SUCCESS" followed
by the endline charecters.  The server will then write the connection id on the next line.
The connection id must be saved and used for the read and write calls.

If the connection setup was unsuccessful, the server will respond with "FAIL - &lt;message&gt;"
where &lt;message&gt; describes the failure type.  The message may or may not be 'user friendly'.

Read command
{:.header #ReadCommand}

The read command establishes an HTTP connection that stays open for the life of the
proxied connection.  The server holds open the response stream and writes all data it reads
from the remote host.  This data is encoded according to the
[Data Encoding](#DataEncoding) definition.  The required parameters are:

- action
  - The action command must be set to "read" for this command.
- id
  - The id parameter should match the value returned by the open command.

There are no optional parameters defined for this command.

The server responds by opening the response stream and writing all data written
by the remote host to the HTTP response stream.  The server will keep doing this until the
connection is closed.  Closing the HTTP response stream may also cause the
proxied connection to be closed as well!

Write command
{:.header #WriteCommand}

The write command writes data read from the local client.  The write command will be executed
many times over the life of a single connection.  Individual clients may choose to buffer
bytes for a specific time before triggering the write command to reduce overhead, although
this may cause the connection to seem less responsive.  The required parameters are:

- action
  - The action command must be set to "write" for this command.
- id
  - The id parameter should match the value returned by the open command.
- datalength
  - The datalength parameter specifies the total number of bytes that are in the
    data payload.  This is the total number of original bytes.  The actual data
    parameter may be longer due to encoding.
- data
  - The data parameter is a comma delimted list of bytes, represented by their
    signed decimal equivelents
  - The bytes are represnted as numbers between 127 and -128.
  - See the [Data Encoding](#DataEncoding) definition for more details.

ReadWrite command
{:.header #ReadWriteCommand}

The readwrite command performs both a read and write.  The required parameters are
identical to those of the [write command](#WriteCommand) with the
exception that the value of the action parameter is "readwrite".

The server responds with the same response that it would to a read command, with
the exception that only the currently buffered data is read before the server closes
the connection.  Therefore, the readwrite command must be called on a regular basis
to determine if there is more data to be read from the remote host.

Data Encoding
{:.header #DataEncoding}

To write data from the client to the server, all normal printable bytes are written 'as is'.
The normal bytes are defined as 33 - 126 (decimal, inclusive).  All other bytes should be encoded
as their hex value, with a '#' charecter prefixed.  For example, a '#32' would represent a space for
ascii streams, or just byte 0x32.  The only exceptions are the following 'normal' bytes, which must
be encoded: (%,?,@,&,=,+,:,#).

The following method determines whether a byte needs to be encoded or not:

```java
private boolean needsEncoding( byte data )
{
	boolean result = true;
	if( data >= 33 && data <= 126 )
	{
		result = (data == '%' || data == '?' || data == '@' ||
			data == '&' || data == '=' || data == '+' || data == ':' || data == '#' );
	}
	return result;
}
```

Data read from the server by the client is not encoded, and is sent over the socket as a byte.
This data does not need to be encoded because it is not included as part of a HTTP header and
is not limited by any specific encoding.

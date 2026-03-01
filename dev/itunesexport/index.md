---
layout: default
title: iTunes Export M3U Playist Exporter
keywords: Eric Daugherty EricDaugherty.com iTunes Export Playlist M3U
description: Eric Daugherty's iTunes Export M3U Playist Exporter
ad: 3680571130
---

iTunes Export
{:.title}

{% include itunes-navbar.html %}

**Playlist Export, a native Mac OSX application based on iTunes Export is available in the Mac App Store. [Check it out!](http://itunes.apple.com/us/app/playlist-export/id434426826?mt=12&ls=1)**

Introduction
{:.header #Introduction}

iTunes Export exports playlists defined in your iTunes Music Library
to standard .m3u, .wpl (Windows Media), .zpl (Zune), or .mpl (Centrafuse) playlists.
iTunes Export also supports copying the original music files with the playlist to
facilitate exporting to other devices.
iTunes Export is open source and freely available for use.

iTunes Export comes in two versions:

- Graphical User Interface - An easy to use version.
- Command Line Version - Supports automated processes and scripting.

Both versions are supported in Windows and macOS. The user interface
version requires Adobe AIR.

Both versions, and the source code are available for download from
the [Download](#Download) section.

International Support - iTunes Export GUI is now available in multiple language. English and French are available
today.
If you are willing and able to translate other languages please let me know!

The 1.x branch of iTunes Export was written using the .Net Framework. This version
only worked on Windows, and was deprecated in favor of the new 2.0 branch built using
Adobe AIR and Go for the GUI and Console versions respectively. If you need to use
this older branch for some reason it is available [here](1.x/).
<br/>
There is also a previous version of the console version written using Java (Scala) avalable
[at Github](https://github.com/ericdaugherty/itunesexport-scala). However, this is unsupported
and does not work on the newest versions of Java (>= v18).

If you have a questions, please review the [FAQ](faq.html). If it does not answer your question please
email me at [eric@ericdaugherty.com](mailto:eric@ericdaugherty.com)

Download
{:.header #Download}

GUI Application - Version 2.2.2

Download [iTunes Export](iTunesExport-2.2.2.air) now.
<br/>
This application requires the [Adobe&#174;&nbsp;AIR&#8482; runtime](https://airsdk.harman.com/runtime).

<br/>
Console Application - Version 1.7.2

- [macOS x86 (amd64)](https://github.com/ericdaugherty/itunesexport-go/releases/download/v1.7.2/itunesexport-v1.7.2-darwin-amd64.zip)
- [macOS Mx (arm64)](https://github.com/ericdaugherty/itunesexport-go/releases/download/v1.7.2/itunesexport-v1.7.2-darwin-arm64.zip)
- [Windows x86](https://github.com/ericdaugherty/itunesexport-go/releases/download/v1.7.2/itunesexport-v1.7.2-windows-amd64.zip)
- [Linux x86](https://github.com/ericdaugherty/itunesexport-go/releases/download/v1.7.2/itunesexport-v1.7.2-linux-amd64.zip)

On macOS you may get an error that the application is unsigned. If so, you can right-click the applicaiton and
select 'Open in Terminal', and then select 'Open' when prompted. It will now work from the terminal/console.

Apple Music may not write out a library xml file. You can export your curent library
in Apple Music by selecting File > Library > Export Library.

Application Source at [GitHub](https://github.com/ericdaugherty/itunesexport-go)

Using iTunes Export
{:.header #using-itunes-export}

iTunes Export UI
{:.subheader}

iTunes Export UI is a Graphical application that provides
a wizard based interface to export your iTunes playlists to m3u files.

To use iTunes Export GUI, simply launch iTunesExport and follow the instructions.

iTunes Export Command Line
{:.subheader}

iTunes Export is a command line application. To use it, download the correct version above
and use as following:

```
itunesexport -includeAll
```

If iTunes Export is run with the -includeAll parameter it will attempt to locate
your iTunes Music Library and will write a .m3u playlist file for each
playlist defined in the iTunes Music Library. You can specify the -h
parameters for a list of allowed parameters.

If you wish to include only a subset of your playlists in the export, you can specify them using the
include option. This takes a single or list of playlists that will be exported.

```
itunesexport include playlist1 playlist2
```

If you wish to exclude only a subset of your playlists in the export, you can specify them using the
-includeAll opton with the exclude option. This will export all playlists EXCEPT playlist1 and playlist2

```
itunesexport -includeAll exclude playlist1 playlist2
```

If you wish to include all but a subset of your playlists in the export, you can specify them using the
-includeAll option with the exclude option. The following example will include all playlists EXCEPT
playlist1 and playlist2

```
itunesexport -includeAll exclude playlist1 playlist2
```

The location of the iTunes Music Library can be overridden using a command
line parameter. Example:

```
itunesexport -includeAll -library "C:\My Music\iTunes Music Library.xml"
```

iTunes Export will write the playlists to the current directory unless an
output directory is specified. Example:

```
itunesexport -includeAll -output "c:\My Output Directory"
```

iTunes Export allows you to export playlists using a variety of formats.
By default, playlists are exported at M3U playlists, but you can use the following parameter
to change to EXT, WPL, ZPL, or MPL:

```
itunesexport -includeAll -type WPL
```

iTunes Export will use the absolute location of your music files in the playlist. iTunes Export
accepts a command line parameter that will override this default. Example:

```
itunesexport -includeAll -musicPath "z:\music"
```

By default, iTunes Export will exclude the 'built in' playlists, such as Music and Movies. If you want to include
these, you can use the includeAllWithBuiltin option.

```
itunesexport -includeAllWithBuiltin
```

You can choose to have iTunes Export copy your music files to an output directory.
Three seperate modes are supported. FLAT - Copies all the files into the output directory.
ITUNES - Copies the files retaining the iTunes structure (Artist/Album). PLAYLIST - Copies
the songs into a folder per playlist.

```
itunesexport -copy FLAT
```

By default iTunes Export will copy all playlists ignoring any folder structure. To preserve
the older structure use -includeFolders

```
itunesexport -includeFolders
```

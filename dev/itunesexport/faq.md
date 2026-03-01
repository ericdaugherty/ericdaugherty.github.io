---
layout: default
title: iTunes Export M3U Playist Exporter
---

iTunes Export
{:.title}

{% include itunes-navbar.html %}

Frequently Asked Questions (FAQ)
{:.header}

My exported playlist is missing songs.
{:.header}

There are several possible causes to this:

- Some of your songs are 'unchecked' in iTunes. Be default iTunes Export ignores files that are unchecked. This setting can be overriden in both the GUI and Console versions.
- Some of your songs have are not MP3 Files. Be default iTunes Export only includes MP3 files. You can override this setting to include unprotected AAC or ALL files.

Why do I get an 'OutOfMemoryError' when I run the Console version?
{:.header}

Large iTunes Music Libraries can cause the application to run out of memory. Try adding
the parameter -mx1024m to increase the heap size. This parameter must come before the -jar parameter.

Why did you switch from the .Net version to Flex and Scala?
{:.header}

The .Net version did not support Mac OS X. I wanted to expand the reach of iTunes Export
to Mac users. The .Net version can still be found [here](1.x/).

There are three extra characters at the begining of the file.
{:.header}

iTunesExport supports Unicode characters and therefore uses UTF-8 encoding. These characters (EF BB BF) are the Byte Order Markers
that indcate the file type. You can [read more here](http://en.wikipedia.org/wiki/Byte-order_mark).

The GUI version supports the inclusion or exclusion of these bytes. The Command Line version does not.

TVersity doesn't work with my exported playlist
{:.header}

TVersity reportedly has problems using mapped drives in playlists

Playlists will not appear in TVersity unless there is at least one valid song.
If all the paths are invalid, the playlist will not appear at all.

Playlists generated on Mac OS X with Foreign (Non-Latin) characters can't be read by the player
{:.header}

OSX uses a slightly differnet UTF-8 encoding which may cause problems with other software. On Mac OSX playlists may need to be 'post processed' using the following command:

```
iconv -f UTF8-MAC -t UTF8 "playlist.m3u" > "playlist_utf8.m3u"
```

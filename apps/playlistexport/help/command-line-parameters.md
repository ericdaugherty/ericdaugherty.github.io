---
layout: default
title: Playlist Export Help
keywords: Eric Daugherty EricDaugherty.com Playlist Export OSX Mac iTunes Help
description: Help for Playlist Exporter for iTunes on Mac OSX
---

Playlist Export Command Line Parameters
{:.header}

Playlist Export supports a variety of command line parameters to modify the playlist creation process. This page outlines the available parameters.

<div class="section-name">Help/Usage</div>
<div class="section" markdown="1">
You can view the built-in help text (usage guide) by using the -h or -? parameters.

```
PlaylistExportConsole -h
```
</div>

<div class="section-name">Library Location</div>
<div class="section" markdown="1">
Playlist Export attempts to load your iTunes library from its default location. (~/Music/iTunes/iTunes Music Library.xml). You can override this default behaviour by specifying a specific location.

```
PlaylistExportConsole --library "/alternate/path/to/iTunes Music Library.xml"
```

or

```
PlaylistExportConsole -l "/alternate/path/to/iTunes\ Music\ Library.xml
```

If there are spaces in the path, the entire path must be surrounded with quotation marks (as in the first example) or by escaping the spaces with a \\ (as in the second example).
</div>

<div class="section-name">Output Directory</div>
<div class="section" markdown="1">
By default Playlist Export will write the generated and copied files into the current directory. You can change this location using the --output-dir parameter.

```
PlaylistExportConsole --output-dir /tmp/playlists
```

or

```
PlaylistExportConsole -o /tmp/playlists
```

As with the Library Location, a path that contains spaces must be surrounded with qutotation marks (") or have the spaces escapted with \\ (/my/path\\ with\\ spaces)
</div>

<div class="section-name">Playlist Type</div>
<div class="section" markdown="1">
Playlist Export can export playlists in multiple formats. The default format is M3U, but the following options are acceptable:

- M3U - m3u with Latin-1 encoding and .m3u extension.
- M3U8 - m3u with UTF-8 encoding and .m3u8 extension.
- M3U_EXT - m3u extended format with Latin-1 encoding and .m3u extension.
- M3U8_EXT - m3u extended format with UTF-8 encoding and .m3u8 extension.
- WPL - Windows Playlist format.
- ZPL - Zune Playlist format.
- MPL - Centrafuse .mpl Playlist format.

```
PlaylistExportConsole --playlist-type M3U8
```

or

```
PlaylistExportConsole -t WPL
```
</div>

<div class="section-name">Included Playlists</div>
<div class="section" markdown="1">
Playlist Export will export all playlists defined in iTunes. To specify only specific playlists to export, use the include-playlist parameter. This parameter can be speicfied multiple times to include multiple playlists.

```
PlaylistExportConsole --include-playlist Playlist1
```

or

```
PlaylistExportConsole -i Playlist1
```

Multiple parameters can be specified as well.

```
PlaylistExportConsole -i Playlist1 -i "Playlist 2" -i Playlist3
```

As shown above, playlists with spaces in the name must be enclosed with quotes (").

This parameter cannot be combined with Exclude Playlists.
</div>

<div class="section-name">Excluded Playlists</div>
<div class="section" markdown="1">
Playlist Export will export all playlists defined in iTunes. To exort all playlists except a few, use the exclude-playlist parameter. This parameter can be speicfied multiple times to exclude multiple playlists.

```
PlaylistExportConsole --exclude-playlist Playlist1
```

or

```
PlaylistExportConsole -e Playlist1
```

Multiple parameters can be specified as well.

```
PlaylistExportConsole -e Playlist1 -i "Playlist 2" -i Playlist3
```

As shown above, playlists with spaces in the name must be enclosed with quotes (").

This parameter cannot be combined with Include Playlists.
</div>

<div class="section-name">Exclude Disabled Tracks</div>
<div class="section" markdown="1">
Playlist Export will export all tracks in a playlist. To exclude tracks that have been disabled (unchecked) in iTunes, add the exclude-disabled parameter.

```
PlaylistExportConsole --exclude-disabled
```

or

```
PlaylistExportConsole -d
```
</div>

<div class="section-name">Exclude Predefined Tracks</div>
<div class="section" markdown="1">
iTunes includes several 'built in' playlists, including 'Music', 'Library', 'TV Shows', etc. This option will exclude all built in options. This can be combined with the Exclude Playlists option as well. To exclude predefined playlists, add the exclude-predefined parameter.

```
PlaylistExportConsole --exclude-predefined
```
</div>

<div class="section-name">Include Tracks with an Extension</div>
<div class="section" markdown="1">
If the device you are using to consume the playlists only supports some of the file types that you have in your playlists, you can use this option to include only the tracks of a certain type. IE 'mp3', 'wav', 'aac', etc. This option can be specified multiple times to include multiple file types. To include a specific track types, add the include-extension parameter.

```
PlaylistExportConsole --include-extension mp3
```
</div>

<div class="section-name">Exclude Tracks with an Extension</div>
<div class="section" markdown="1">
If the device you are using to consume the playlists only supports some of the file types that you have in your playlists, you can use this option to exclude the tracks of a certain type. IE 'mp3', 'wav', 'aac', etc. This option can be specified multiple times to exclude multiple file types. To exclude a specific track types, add the exclude-extension parameter.

```
PlaylistExportConsole --exclude-extension mp3
```
</div>

<div class="section-name">Change the output Path Prefix</div>
<div class="section" markdown="1">
This option behaves differently using the Copy Track type NONE (default) than other types. When using NONE, the value of this parameter will be used to replace the default path to your music files, called the MusicPath in iTunes. If iTunes is not configured to automaticlly organize your music, this option may not work well. When used with other Copy Track options, the value of this parameter is prepended to the path in the output playlist. This can be useful if you want to specify an absolute path to your tracks for an external device. To specify the path prefix use the path-prefix parameter.

```
PlaylistExportConsole --path-prefix /new/path/to/your/music/
```

or

```
PlaylistExportConsole -p /new/path/to/your/music/
```
</div>

<div class="section-name">Replace Path</div>
<div class="section" markdown="1">
This parameter is a generic tool to modify the paths in the output playlist. This allows you to change all occurances of a given string to another string (or remove it). This can be useful as an alternative to the Path Prefix parameter when iTunes is not orgaizing your music, or whenver you need to modify the output path. The value of the parameter is two string seperated by the ^ character (Shift-6 on many keyboards). Ex. /old/path^/new/path. To simply remove part of the path you can leave the new part blank, ex. /old/path^

```
PlaylistExportConsole --replace-path old^new
```

or

```
PlaylistExportConsole -r old^new
```
</div>

<div class="section-name">Copy Music Files</div>
<div class="section" markdown="1">
Playlist Export can be used to copy the music being exported as well. This can be done directly to the target device, or to an intermediate folder as needed. There are several different ways to copy the music:

- NONE - (Default) No files are copied.
- FLAT - The music files are all copied directly into the output directory. This is the simplest, but may cause issues if multiple songs have the same file name.
- FLAT_INDEXED - Similar to FLAT, except a unique number is prepended to each file name to avoid conflicts.
- PLAYLIST - A directory is created for each playlist, and the songs are copied into that directory.
- PLAYLIST_INDEXED - Similar to PLAYLIST, except a unique number is prepended to each file name to avoid conflicts.
- ARTIST_ALBUM_SONG - A nested directory structure that includes the artist name and album name is created. This is similar to the structure used by iTunes when it manages the library and should avoid most conflicts.

```
PlaylistExportConsole --copy FLAT
```

or

```
PlaylistExportConsole -c PLAYLIST
```
</div>

<div class="section-name">UTF-8 BOM</div>
<div class="section" markdown="1">
A UTF-8 Byte Order Mark can be included at the begining of a file. However, for UTF-8 it is not reccomended as it provides no value. ([http://en.wikipedia.org/wiki/Byte_order_mark#UTF-8](http://en.wikipedia.org/wiki/Byte_order_mark#UTF-8)). Be default, Playlist Export does not include a BOM. However, you can have Playlist Export include one using the --include-bom parameter.

```
PlaylistExportConsole --include-bom
```

or

```
PlaylistExportConsole -b
```
</div>

<div class="section-name">Exclude Header</div>
<div class="section" markdown="1">
Playlist Export addes a comment line to the begining of every exported M3U file. While this conforms to the specification, some applciations may have problems reading this files. In this case, you can use this parameter to omit the header.

```
PlaylistExportConsole --no-header
```
</div>

<div class="section-name">Extension</div>
<div class="section" markdown="1">
Each playlist type has a default file extension it uses (.m3u, .wpl, etc). This extension can be overridden if you prefer to use a different extension.

```
PlaylistExportConsole --extension myext
```

or

```
PlaylistExportConsole -x myext
```

When specifying a custom extension, do not include a leading period.
</div>

<div class="section-name">Windows Paths</div>
<div class="section" markdown="1">
If the exported playlist will be consumed by a device that uses Windows style paths (\\ path separator instead of /), use this option. The paths in the output playlist will use the \\ path separator.

```
PlaylistExportConsole --windows-paths
```
</div>

<div class="section-name">Replace All Spaces</div>
<div class="section" markdown="1">
If the exported playlist will be consumed by a device or program that has problems handling paths with spaces, you can use this parameter to replace all the spaces in the exported playlists with another character. The _ character is the reccomended option.

```
PlaylistExportConsole --replace-spaces _
```
</div>

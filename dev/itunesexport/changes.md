---
layout: default
title: iTunes Export M3U Playist Exporter
---

iTunes Export
{:.title}

{% include itunes-navbar.html %}

Change Log
{:.header}

Version TBD
{:.header}

(GUI Only) Fixed a bug that caused the program to freeze when attempting to export
a playlist that contained a track without a Location entry.

(GUI Only) Fixed a bug that improperty copied files when the playlist file name included a colon (:)

(GUI Only) Included a German tranlation.

Version 2.2.2 (06/01/2010)
{:.header}

(GUI Only) Fixed bug where iTunesExport would hang when attempting to export multiple playlists with the same name. Now, the last playlist will be exported.

(GUI Only) Fixed bug where iTunesExport would hang when attempting to copy a file that does not exist. Now the file will be skipped.

(Console Only) Reduced memory usage. Changed method to avoid DTD look-ups that uses less memory.

Version 2.2.1 (2/12/2010)
{:.header}

Enhanced the playlist name filter to include characters from the Latin 1 Supplement Block.

(Console Only) Replaced ad-hoc URL decoding of file paths with URLDecode class. Now non-ASCII characters are handled correctly in file names.

Added(Console)/Changed(GUI) 'addIndex' logic. Now uses incrementing index instead of iTunes Song Index. Index is in the order iTunes has the songs in for each playlist.

Version 2.2.0 (1/19/2010)
{:.header}

Added option to exclude 'Built In' playlists, including Music, Library, Genius, Movies, etc.

(GUI Only) Added auto-update functionality. Checks for a new version every 7 days. Can be disabled in the 'About' window.

(GUI Only) Resolved issue where Finish button causes error on 'Select Playlist' screen. Finish button is now disabled on this screen

(GUI Only) Added option to 'About' screen to change between languages. English and French currently supported

(GUI Only) Improved French translation. Thanks to MrDNA (mrdna@laposte.net) for doing the translation.

(Console Only) Fixed issue with XML validation. This version no longer attempts to validate the XML file (required downloading DTD from apple).

(Console Only) Fixed issue where spaces were being converted to underscores in playlist names.

Version 2.1.1 (12/7/2009)
{:.header}

(GUI Only) Resolved issue with File Separator replacement (/ \\) on Windows.

iTunes uses different values for 'Type' based on the user's language. Changed logic to match file extension instead of value of 'Type' for MP3 file matching.

(GUI Only) Fixed issue where scroll bars would appear with long Music Path.

(GUI Only) Fixed Show Songs feature to update the song list when a different playlist is selected.

Updated processing of Playlist Name. All characters are replaced with an underscore (_) except A-Z,a-z,0-9,.\[\]{}-$=. This should resolve any issues with playlists containing illegal characters. This may result in some characters in non-western character sets to be replaced with _. GUI and Console versions now contain the exact same logic.

(GUI Only) Implemented basic 'type to find' logic for Playlist list. Only matches first character, and you must select an item before the search works.

Version 2.1 (11/25/2009)
{:.header}

Added option to change the default file path separator. This is useful if you will be using the playlist on a different operating system from the one used to export the playlist

iTunes 9 changed the directory structure of the music folder. Added logic to include the 'Music' subfolder as part of the Music Path, and therefore exclude it from the iTunes Structure file copy.

(GUI Only) All settings (except which playlists to export) are now saved and used as the default value on the next execution. There is a Default/Restore Default button on the appropriate pages to reset to the default settings.

Version 2.0 (11/04/2009)
{:.header}

Ported the iTunes Export application to AIR and Scala. Mac OS X is now supported.

The features are similar but may have changed slightly due to the porting process.

The file copy logic has been revamped to include three seperate schemes, FLAT, ITUNES, and PLAYLIST. The PLAYLIST option matches the 1.x logic.

Version 1.6 (10/04/2009)
{:.header}

Improved the logic for music copying. It can now handle duplicate songs and an arbitrary number of songs in a playlist (removed the 999 song limit) and handles duplicate files gracefully.
Thanks to Simon Hyde (simon@icedrop.net) for submitting the patch.

Added support for MPL playlists, used by Centrafuse (www.centrafuse.com) Car PC. Thanks for Stavros Glezakos for submitting the patch.

Version 1.5 (11/19/2008)
{:.header}

Fixed issue with invalid characters in playlist filenames. Some characters are valid in playlist names (within iTunes), but not valid in filenames for the resulting playlist files. Thanks to [Jeff Donnici](http://jeff.donnici.com).

Added Multi-Language support for GUI version. Descriptions now available in English and French. Thanks to Ayack for the translation.

Updated the Library reader and all playlist writers to use UTF-8 encoding to allow for foreign character sets. Thanks to Stephen JANNIN for the patch.

Changed the export routine to include audio streams (files that start with http://). However, it will not attempt to copy them if 'copy music' is selected.

Disabled tracks (tracks that are unchecked in iTunes) are now ignored. Thanks to Jeroen Leijen for the suggestion.

Version 1.4 (1/19/2008)
{:.header}

Added Zune playlist support (ZPL). Thanks to [Jeff Donnici](http://jeff.donnici.com)

Version 1.3.2 (11/12/2007)
{:.header}

Added filter for playlist names including \* character. Now replaced with _. Thanks to Gary Butler (gaz77a@tpg.com.au)

Added filter to ignore songs with no 'Location' Specified in the iTunes Library.

Fixed bug where + sign in file paths were replaced by spaces. Thanks to Pranesh Deo (http://www.myspace.com/dil30)

Version 1.3.1 (5/16/2007)
{:.header}

Fixed bug in GUI version that caused it to crash. No changes to console version.

Version 1.3.0 (5/13/2007)
{:.header}

Added support for playlists in the "M3U Extended" format (see: [http://en.wikipedia.org/wiki/M3U](http://en.wikipedia.org/wiki/M3U))

Added support for M3U8 file extension, which prompts some media players to treat playlist as Unicode (see: http://en.wikipedia.org/wiki/M3U)

The GUI client was updated to support M3U Extended option, plus cosmetic/UI cleanup.

Fixed problem with UNC paths having an extra leading slash removed.

Fixed prefix feature to handle UNC paths (\\\\server\\share\\directory).

The GUI client now includes an application icon for both the main window and the About window.

(Thanks to [Jeff Donnici](http://jeff.donnici.com) for adding/fixing all of the changes)

Added .resx files to the source include. Thanks to Brett Bendickson for reporting the issue.

Version 1.2.0 (2/28/2007)
{:.header}

Playlist folders are now recognized and are by default excluded from the export. Thanks to Rishi Dhupar reporting the issue.

Added support for WPL playlist exports. This to Rishi Dhupar for providing implementation code.

Version 1.1.0 (2/12/2007)
{:.header}

Added new feature to copy music files to an output directory. This feature
was requested by [Jason Clarke](http://www.downloadsquad.com/2007/01/11/exporting-itunes-playlists-to-non-ipods-readers-sound-off/)
and others. Thanks to Jason and for helping define the requirements.

Modified output to exclude web trackes (tracks starting with http:)

Version 1.0.4 (01/24/2007)
{:.header}

Modified playslist names to replace / or \\ characters with -. Thanks to Rishi Dhupar, Coco Esteves, and Aaron Butler for reprorting the issue.

Version 1.0.3 (12/02/2006)
{:.header}

Modified Library Parser to include files even if the author is not specified. Thanks to James Corr for reporting the issue.

Version 1.0.2 (03/30/2006)
{:.header}

Modified XML parser to skip validation. Validation required internet connectivity. Thanks to Jeremy Bradshaw

Fixed default iTunes Library location to work in international versions. Thanks to Jeremy Bradshaw

Updated build to include app.ico file in source distribution.

Added ability to exclude playlists using Console tool.

Version 1.0.1 (12/18/2004)
{:.header}

Fixed handling of command line arguments in console version. Previous
version failed when using a prefix such as: "-prefix=c:\\My Dir\\".

Added -dir argument to console version to allow output of playlists to specified directory.

Version 1.0 (04/11/2004)
{:.header}

Tested the Console application using Mono 0.29 on Linux.

Fixed exclusion of AAC files. Default is to exclude all AAC files,
and there is now an option to include unprotected and/or include protected
AAC files.

Fixed default Music Library location. Improved resolution of default location.

Updated behavior of GUI application to be more user friendly.

Added improved help display in Console version.

Added version display to Console version.

Version 0.3 (02/01/2004)
{:.header}

Added GUI version of iTunesExport.

Added ability to exclude AAC files from exported playlists.

Added ability to exclude the Library playlist (all songs).

Version 0.2 (01/26/2004)
{:.header}

Changed the Library Parser to track whether each track is stored
in the iTunes Music Library folder or not. The generated playlists
only apply the prefix if the track is from the music library.

Version 0.1 (12/27/2003)
{:.header}

Initial Release

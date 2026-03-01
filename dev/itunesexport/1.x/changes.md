---
layout: default
title: iTunes Export M3U Playist Exporter 1.x
---

iTunes Export
{:.title}

{% include itunes-1x-navbar.html %}

Change Log
{:.header}

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

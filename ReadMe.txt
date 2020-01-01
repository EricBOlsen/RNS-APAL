Basic Compile Notes:
Compiled with Visual Studio Community 2017  (free download)
Version 15.4.1

Download Visual Studio and select the C++ development environment & tools.

The user may need to re-compile the project solution to match their installed Windows SDK.
Open the solution.  Right click on the project name "RNS-APAL" in the Solution Explorer pane, and
select "Retarget Projects".  Select the appropriate installed Windows SDK, if none is present, you 
may need to install it.

Sorry for all the warnings, but the code should compile without any issues.

in config.h:

Set the #define CONSOLE_WIDTH 128  // for Win-10
Set the #define CONSOLE_WIDTH 80   // for Win7 and Win 8

This adjusts the default console width for the PrintDemo() method.

Regards,
DSR


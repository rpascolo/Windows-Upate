# rpo
Original script by pf100 @ MDL with special thanks to rpo @ MDL for code improvements.
https://forums.mydigitallife.info/threads/72203-WUMT-Wrapper-script-controls-windows-update-service
******************************************************************
You may freely modify this script as you wish, I only request that you leave the credits and the
link to the original script.
******************************************************************
Update Windows 10 on your schedule, not Microsoft's!
I originally wrote this script for personal use because of the lack of update options with the
original RTM release of Windows 10 Pro. I wanted to update Windows 10 when I had the free time
to manually update, just like I did with previous versions of Windows that allowed me to
set updates to manual, not when Microsoft forced it on me while I was busy using my computer.
When my computer rebooted in the middle of the night after a forced update I swore it would be
the last time I would let that happen. With the Windows 10 Anniversary Edition, increased lack
of control and arbitrary removal of registry options only got worse. Microsoft removed previously
working Group Policies and registry tweaks on Windows 10 Pro and Windows 10 Home and I expect
things may only get worse with future major updates. The methods that may or may not work now
such as update notifications, metered network connections, Windows 10 Pro Group Policy edits,
and other workarounds implemented to control automatic updates are not guaranteed to work forever
on Windows 10 if the past is any indicator. This script will always allow fully
manual updates no matter what Microsoft does to force automatic updates, including Windows 10 Home.
*******************************************************************
Installation: Save this script and the Windows Update MiniTool (WUMT) in the same folder, i.e.
"X:\WindowsUpdateControl", then make a shortcut to this script and use it to run windows updates
manually from now on.
WUMT is available here: https://forums.mydigitallife.info/threads/64939-Windows-Update-MiniTool
*It is recommended to keep the Windows Update Minitool (WUMT) updated to the latest version.* 
*******************************************************************
How it works: This script auto-elavates, enables and starts the windows update service (wuauserv)
if disabled, then runs the correct version of the Windows Update MiniTool in "auto search for updates"
mode for your OS version's architecture (x86 or x64), then disables and stops wuauserv giving you
full control. No more forced automatic updates or surprise reboots in the middle of the night. This was
written for Windows 10 Pro and Home, but works with all versions of Windows that WUMT works with,
including all versions of Windows 10 / 8 / 7 / Vista / XP.
*******************************************************************
*If you need to install .Net 3.5 or use the Windows 10 Store or something that needs wuauserv
running, run the script and after it enables wuauserv and starts WUMT, install what you need
while WUMT checks for updates.
*******************************************************************



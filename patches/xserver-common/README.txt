These are the files for the TRIBx11-server-xserver-common package

The original (OI) package contained:

/lib/svc/manifest/application/x11/x11-server.xml
/lib/svc/method/x11-server
/usr/X11/bin/X=../../bin/X
/usr/X11/bin/Xserver=../../bin/Xserver
/usr/X11/bin/amd64=../../bin/amd64
/usr/X11/bin/i386=../../bin/i86
/usr/bin/X=Xserver
/usr/bin/Xserver
/usr/demo/Xserver/mdb/README
/usr/demo/Xserver/mdb/list_Xserver_clients
/usr/demo/Xserver/mdb/list_Xserver_devicegrab_client
/usr/demo/Xserver/mdb/list_Xserver_servergrab_client
/usr/lib/help/auths/locale/C/X11States.html
/usr/lib/help/profiles/locale/C/RtDesktopConfiguration.html
/usr/lib/mdb/proc/Xserver.so
/usr/lib/mdb/proc/amd64/Xserver.so
/usr/lib/xorg/TrustedExtensionsPolicy
/usr/lib/xorg/protocol.txt
/usr/share/man/man1/Xnest.1
/usr/share/man/man1/Xserver.1

Looking at this:

We don't want the manifest or method; if we're launching X we use
SLiM.

We don't want /usr/X11, that's legacy.

We don't want demos.

We don't want the help, that's legacy.

We don't want the man pages - Xserevr is shipped by the server anyway,
and Xnest no longer exists.

We probably don't want the mdb files.

We don't want the Xserver in /usr/bin, it's a hack used by the SMF
script. We probably just want the X and Xserver in /usr/bin to symlink
to Xorg, just in case anything is using the old names.

Which means that the only 2 files from the old package we need are the
2 in /usr/lib/xorg, and those are the files in this directory.

Ideally, we would remove the xserver-common package and simply ship
the pieces in the Xorg package.

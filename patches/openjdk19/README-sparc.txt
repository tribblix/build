The sparc support here is based on the work by

Stian Halseth <stian@itx.no>
suyash jain <suyash.jain@perforce.com>

which was published in the following repo:

https://github.com/shalseth/jdk-sunos-patches/tree/linux-sparc

Which pushed sparc support on Linux all the way to jdk25; I've picked
it up and knocked the Solaris-specific parts into shape. As such, I
haven't implemented builds for the intervening tags between 19+21 and
19.0.2.

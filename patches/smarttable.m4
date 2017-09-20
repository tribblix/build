divert(-1)
dnl
dnl Updates: http://anfi.webhop.org/sendmail/smarttab.html
dnl
dnl Copyright (c) 1999, 2002 Andrzej Filip
dnl	All rights reserved.
dnl
dnl THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS``AS IS'' 
dnl AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
dnl THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A 
dnl PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR 
dnl CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
dnl EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
dnl PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
dnl PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY 
dnl OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
dnl (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE 
dnl USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH 
dnl DAMAGE. 
dnl
dnl THE AUTHOR NAME MUST BE QUOTED IN ANY WORK DERIVATED FROM THE WORK
dnl
dnl The file or works derivated from it may be included in 
dnl open source sendmail distribution.
dnl
dnl $Log: smarttable.m4,v $
dnl Revision 8.7  2004/03/18 21:41:18  anfi
dnl Changed comments prefixes to dnl to avoid m4 expansions
dnl
dnl Revision 8.6  2004/03/15 09:14:28  anfi
dnl Added "Updates:" web link.
dnl
divert(0)
VERSIONID(`$Id: smarttable.m4,v 8.7 2004/03/18 21:41:18 anfi Exp $')
divert(-1)

LOCAL_CONFIG
# Smart table
# (used for selecting smart host based on envelope sender address)
Ksmarttable ifelse(defn(`_ARG_'), `', DATABASE_MAP_TYPE MAIL_SETTINGS_DIR`smarttable',
                 defn(`_ARG_'), `LDAP', `ldap -1 -v sendmailMTAMapValue -k (&(objectClass=sendmailMTAMapObject)(|(sendmailMTACluster=${sendmailMTACluster})(sendmailMTAHost=$j))(sendmailMTAMapName=smarttable)(sendmailMTAKey=%0))',
                 `_ARG_')
LOCAL_NET_CONFIG
R$+ < @ $+ >	$: $>SmartTable $1 < @ $2 >

LOCAL_RULESETS
SSmartTable
R$* 			$: ${opMode} $| $(dequote "" $&f $) $| $1
# rewrite <> sender address (empty) to @
Ri  $| $* $| $*		$: $| $1 $| $2
R$- $| $@ $| $*		$: $| @  $| $2
R$* $| $* $| $*		$: $| $2 $| $3
# check sender in smarttable as it is (with domain part)
R$| $+ $| $*		$: $(smarttable $1 $: $) $| $1 $| $2
# check user part of sender address in smarttable
R$| $+@$+ $| $*		$: $(smarttable @$2 $: $) $| $1@$2 $| $3
# smartable found smart host
R$+ $| $* $| $*		$: $1 $| $2 $| $>95 <$1> $3
# clenup
R$* $| $* $| $*		$: $3

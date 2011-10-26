# $FreeBSD: src/etc/csh.cshrc,v 1.3.56.1.6.1 2010/12/21 17:09:25 kensmith Exp $
#
# System-wide .cshrc file for csh(1).

set autolist
set nobeep

#alias ls 'ls -G'

setenv PACKAGEROOT "ftp://ftp.cn.freebsd.org"

set cr = "%{\e[31m%}" #开始红色
set cg = "%{\e[32m%}" #开始绿色
set c0 = "%{\e[0m%}"  #恢复为默认色彩

# Set some variables for interactive shells
if ( $?prompt ) then
if ( "$uid" == "0" ) then
set prompt = "%B%U%n%u@%m.$cr%l$c0%b %c2 %B%#%b " 
else
set prompt = "%B%U%n%u@%m.$cg%l$c0%b %c2 %B%%%b "
endif
endif

#if ( $?prompt ) then       #如果$prompt变量尚未设置，则做如下设置
#	if ( "$uid" == "0" ) then                  #判断用户的uid
#		set prompt = "%U%n%u@%m [%l] %B%~%b # "    #对于root，我们显示“#”号
#	else
#	set prompt = "%U%n%u@%m [%l] %B%~%b % "    #对于普通用户，显示“%”号。
#	endif
#endif

#让 ls 鲜艳些
setenv LSCOLORS ExGxFxdxCxegedabagExEx
setenv CLICOLOR yes
#让 grep 匹配到的字符高亮
setenv GREP_OPTIONS --color=auto

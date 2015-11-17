#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ ! -z "$(which keychain)" ] ; then
	eval $(keychain --eval --agents ssh -Q --quiet id_rsa)
fi

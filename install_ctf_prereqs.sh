yum install -y $(cat ctf_prereqs.txt)
# Get the latest Xprint, currently at the following location
wget ftp://fr2.rpmfind.net/linux/sourceforge/x/xp/xprint/xprint/release%20009.001/xprint-2004-07-07-release_009_001-0.9.001.i386.rpm -O xprint_latest.rpm
# Install it
rpm -i xprint_latest.rpm
# Get the latest acroread. This is not because acroread is actually
# necessary, but because if you do not install a newer version the CTF
# installer will install an out-of-date and insecure one.
wget http://ardownload.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i486linux_enu.rpm
rpm -i AdbeRdr9.5.5-1_i486linux_enu.rpm

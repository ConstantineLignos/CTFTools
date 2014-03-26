yum install -y $(cat ctf_prereqs.txt)
# Get the latest Xprint, currently at the following location
wget ftp://fr2.rpmfind.net/linux/sourceforge/x/xp/xprint/xprint/release%20009.001/xprint-2004-07-07-release_009_001-0.9.001.i386.rpm -O xprint_latest.rpm
# Install it
rpm -i xprint_latest.rpm

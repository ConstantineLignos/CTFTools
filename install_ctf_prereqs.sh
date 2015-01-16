yum install -y $(cat ctf_prereqs.txt)
# Get the latest (but still far too old) acroread. This is not because
# acroread is truly needed, but because if you do not install it the CTF
# installer will install an even more out-of-date and insecure one.
wget http://ardownload.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i486linux_enu.rpm -O AdbeRdr_latest.rpm
# Install it with dependencies
yum -y --nogpgcheck localinstall AdbeRdr_latest.rpm

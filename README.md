This repository provides instructions for installing CTF MEG/EEG
software suite. Specifically, it has been tested on CentOS 6.5 and
release 5.4.0 of the CTF software.

All actions below must be performed with root privileges (i.e.,
`su root`):

To install:

1. Install CentOS 6 64-bit (x86_64) onto a real or virtual machine
using an ISO from here:
http://isoredirect.centos.org/centos/6/isos/x86_64/

When this guide was written, 6.5 was the current version. Bring your
installation up to date after installation (e.g., `yum update`).

2. To be able to use this repository, install git and check out this
repository:

```
yum install git
git clone https://github.com/ConstantineLignos/CTFTools.git
```

3. Run the `install_ctf_prereqs.sh` script:

```
./install_ctf_prereqs.sh
```

4. Obtain a copy of the CTF software and note the location on the
software on your system. If you are using an ISO, mount it and note
the mount point. For example, to create a directory `/mnt/iso` and
mount it there, do the following:
```
mkdir /mnt/iso
mount -t iso9660 -o loop <iso location> /mnt/iso
```

5. Change directory to the installer and run it. Following the
previous example, the paths would be as follows:
```
cd /mnt/iso
./CTF.install
```

6. [TODO: Answers to installation questions]

7. [TODO: Environment variables]

8. Log out and log back in. Everything should function at this point.

This repository provides instructions for installing CTF MEG/EEG
software suite. Specifically, it has been tested on CentOS 6.5 and
release 5.4.0 of the CTF software. All actions below must be performed
with root privileges (i.e., `su root`).

Installation instructions
=========================

1. Install CentOS 6 64-bit (x86_64) onto a real or virtual machine
   using an ISO from http://isoredirect.centos.org/centos/6/isos/x86_64/.
   When this guide was written, 6.5 was the current version. Bring your
   installation up to date after installation (e.g., `yum update`).

2. Add the EPEL repository, which allows yum to install a wider set of
   packages. The instructions below are taken from
   http://www.rackspace.com/knowledge_center/article/installing-rhel-epel-repo-on-centos-5x-or-6x.
   For CentOS 6, do the following:
    ```
    wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    rpm -Uvh epel-release-6*.rpm
    ```

3. To be able to use this repository, install git and clone it:
    ```
    yum install git
    git clone https://github.com/ConstantineLignos/CTFTools.git
    ```

4. Change directory to the repository you just cloned and run the
   `install_ctf_prereqs.sh` script:
    ```
    cd CTFTools
    ./install_ctf_prereqs.sh
    ```

5. Obtain a copy of the CTF software and note the location on the
   software on your system. If you are using an ISO, mount it and note
   the mount point. For example, to create a directory `/mnt/iso` and
   mount it there, do the following:
    ```
    mkdir /mnt/iso
    mount -t iso9660 -o loop <iso location> /mnt/iso
    ```

6. Change directory to the installer and run it. Following the
   previous example, the paths would be as follows:
    ```
    cd /mnt/iso
    ./CTF.install
    ```

7. During installation, you generally want to give the default answer
   by hitting enter. The non-default answers you will need to specify
   are the path of the source directory for the install (`/mnt/iso` in
   the example above) and "Skip" (3) when asked which electronics
   system is in use. During installation, the installer will complain
   about a number of things not being installed already (i.e., Open
   Motif, Open Motif 2.1, netpbm, Xprint). Its attempts to install
   openmotif and xprint will fail. This is okay; you have already
   installed the needed prereqs. It will also report that netpbm and
   xprint are not installed, this also does not appear to be a
   problem.

8. Set the `CTF_DIR` environment variable and add the CTF tools to
    your `PATH`. If you use bash, you can simply add the following to
    the end of your .bashrc file. If you want to customize where the
    CTF tools look for files, set `CTF_DATADIR` and `CTF_WORKDIR`.
    ```
    export CTF_DIR=/opt/ctf
    export PATH=$PATH:$CTF_DIR/bin
    ```

9. Restart and log back in. Everything should work at this point.

Notes
=====

1. The restart indicated above probably isn't strictly necessary, but
   it did solve a mysterious issue with some tools segfaulting when
   run. It is very likely just logging in and out is enough if restarting
   is an issue.

2. The packages installed (`ctf_prereqs.txt`) are not guaranteed to be
   a minimal set, but they do appear to be adequate.

3. Although xprint is installed in the procedure above, printing from
   the CTF programs does not appear to work.

# circle-ci-general-build
General purpose container aimed at docker builds and testing on circleci.
NOTE: This is intended for running CI tests, not for running in production. You've been warned.

#0.0.1

Includes:
- base-image: `ubuntu:17.04`
- docker `Docker version 17.06.0-ce, build 02c1d87`
- docker-compose `docker-compose version 1.15.0, build e12f3b9`
- docker-machine `docker-machine version 0.12.2, build 9371605`
- node `v8.3.0`
- npm `5.3.0`
- yarn `0.27.5`
- python `Python 2.7.13`
- pip `pip 9.0.1 from /usr/lib/python2.7/dist-packages (python 2.7)`
- ssh `OpenSSH_7.4p1 Ubuntu-10, OpenSSL 1.0.2g  1 Mar 2016`
- curl `curl 7.52.1 (x86_64-pc-linux-gnu)`
- git `git version 2.11.0`
- bash `GNU bash, version 4.4.7(1)-release (x86_64-pc-linux-gnu)`
- rsync `rsync  version 3.1.2  protocol version 31`
- unzip `UnZip 6.00`
- awscli `aws-cli/1.11.132 Python/2.7.13 Linux/4.9.36-moby botocore/1.5.95`
- vault `Vault v0.8.0 ('af63d879130d2ee292f09257571d371100a513eb')`
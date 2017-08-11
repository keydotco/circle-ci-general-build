### Removed
- Remove empty sections from CHANGELOG, they occupy too much space and
create too much noise in the file. People will have to assume that the
missing sections were intentionally left out because they contained no
notable changes.

## [0.0.1] - 2017-08-11
### Added
- initial commit of general purpose docker container for circle-ci
- added detailed readme with application versions included
- added `build.sh` which builds and tags in one step as well as a build, tag, and push with `build.sh -p`

# mirror of cdbs docs

Out of necessity (that is packaging with a deterministic checksum), we mirror the docs of cdb here, until they appear in a release.

To update to a newer version:

```
./update.sh <version-string>
```

It overwrites the files in the current directory, recursively, with the newer ones available at http://cr.yp.to/cdb/.
# mirror of cdbs docs

Out of necessity (that is packaging with a deterministic checksum), we mirror the docs of cdb here, until they appear in a release.

To update to a newer version:

```
./update.sh <version-string>
```

It overwrites the files in the current directory, recursively, with the newer ones available at http://cr.yp.to/cdb.html.

## License

There is no explicit license for the docs, but since djb normally releases his software into the Public Domain, we will assume that holds for these docs as well.

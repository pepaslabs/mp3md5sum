# mp3md5sum
Generate a metadata-independent hash (md5) of an mp3 file

This script is an attempt to solve the problem of detecting duplicate mp3 files which may have differing ID3 tags.

```
$ wget -O bach.mp3 https://goo.gl/mY1rTI
$ mp3md5sum.sh bach.mp3
a4bd73c05553db9a7960216bd5080f66
```

(Bach mp3 courtesy of https://archive.org/details/PabloCasalsCelloSuiteNo.1InGMajorBwv1007I.Prelude)

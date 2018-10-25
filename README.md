# imagepaste.vim

Usage
-----

Copy an image into a clipboard. Then:

```
:ImagePaste <filename>
```

The image will be saved as <filename>, and markdown tag `![<filename>](<filename>)` will be automatically added into the buffer.

You need `pngpaste` installed. Only works in macOS.

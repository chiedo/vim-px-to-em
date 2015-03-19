**px-to-em**  -  Convert px to em or em to px
-----------------------------------------------------
Select text with vim and the enter the following to convert the pixels of your choosing to ems:

```
:Em
```

Or the following to convert the ems of your choosing to pixels:

```
:Px
```

If you don't want to use the standard Base font of 16px, add the following to your ~/.vimrc

```
let g:px_to_em_base = DIFFERENT_FONT_SIZE
```

Example:

```
let g:px_to_em_base = 24
```

License
------------------------------------------------------
Distributed under the same terms as Vim itself. See :help license.

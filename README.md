**Vim-px-to-em**  -  Convert px to em or em to px
==================================
Makes font-size unit conversion for your CSS stylesheets easy!

Installation
------------------------
### Pathogen Install
1. Navigate to your **[VIM_ROOT]/bundle** directory in your local Vim setup
2. git clone https://github.com/chiedojohn/vim-px-to-em.git


Usage
-------------------------
To convert the pixels to ems, select a block of text in visual mode and the enter the following :

```
:Em
```

Or enter the following to convert the ems to pixels:

```
:Px
```

To convert all pixels in the file to ems:

```
:EmAll
```

Or to convert all ems in the file to pixels:

```
:PxAll
```

Add a bang (eg. :Px!) to any of the above command to bypass the prompts before each conversion.

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

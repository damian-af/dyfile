# dyfile

Drop some files in the basket and I'll tidy up

## Install

> You will be asked to give permissions to add the folder action. You can reset them after installation

Execute

```sh
osascript -e install.scpt
```

This will ask you to select two folders:

1. BASKET FOLDER. The one you will drop your files in.
2. MEDIA FOLDER. The one where your files will live after tidying up.

Start droping files in your basket folder!

> You can add the basket folder to Finder so you drop files easily

## Uninstall

1. Detach the folder action from basket folder
2. Remove the action script `$HOME/Library/Scripts/Folder Action Scripts/basket.scpt`
3. Remove this folder

## Todo

### Uninstall

Automate uninstall

### Tests

### Basket in Finder

It will be nice to add the basket folder to the favorites
section in Finder automatically but there is no clean way
to do it at the moment using applescript.
Check [this](https://stackoverflow.com/a/1574757) out.

It seems the right way is by using [LSSharedFileList](https://developer.apple.com/documentation/coreservices/lssharedfilelist) which will
try in the future.
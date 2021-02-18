# dotfiles

Several tweaks accumulated over years of usage. 
The most interesting tweak to my mind is plugin importing in vim config:

```vim
Plug 'pathdesc' | call tconfig#category#PluginConfig()
```
Apart from uncluttering the config file, it allows to just comment out the line and forget about the plugin completely.
No further commenting out is required to avoid errors.

This repo is going to be archived due to gradual loss of github usability, see
https://git.sr.ht/~taxuswc/dotfiles instead.

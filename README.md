# vim-concealer
Enjoy ligature fonts? Intrigued by APL? Hate reading? Then this plugin is for
you!

Using \[neo\]vim's conceal feature, it replaces common keywords and
constructions with nicer (opinions vary) symbols.

## Installation
<details>
  <summary>vim-plug</summary>
  
```vim
Plug 'timenzan/vim-concealer'
```
</details>

<details>
  <summary>packer</summary>
  
```lua
use {'timenzan/vim-concealer', config = ' --[[config goes here]] '}
```
</details>

## Configuration
Because vim-concealer uses `:h conceal`, the options are defined as their own
syntax. In order to enable these, you need to append them to your `syntax` for
every buffer.
In order to enable word and Greek conceal for every file, use:
```vim
augroup set_conceal_syntax
	au!
	autocmd BufNewFile,BufRead * set syntax+=.conceal_words.conceal_greek
augroup END
```
Make sure to `:set conceallevel=2`, otherwise conceal does not show.
You can also `:set conceallevel=0` to turn off the replacements.

Look at `:h concealcursor` to modify the behaviour for the line under the
cursor.

If your colorscheme does not show concealed characters clearly, consider adding
the following to your `.vimrc`/`init.vim`. This colors concealed text the same
as `Normal` text (usually white/black).
```vim
highlight! link Conceal Normal
```

<details>
  <summary>Why this syntax?</summary>
  
 You can overlay multiple syntaxes for the same file by separating them with
 a dot. In addition, you can use `set option+=something` to append `something`
 to `option`. Vim automatically handles multiple options for comma separated
 lists, but `syntax` is a dot separated string, and as such concatenation
 isn't handled automatically.
</details>


<details>
  <summary>Restrict by filetype</summary>
  
Use `:h autocmd` syntax 
</details>


More advanced features (like coloring, non-regex matching, multi-char
replacement) are unfortunately not available until
[this neovim PR](https://github.com/neovim/neovim/pull/9496) is merged.

## Contributing
Issues, PRs, suggestions, forks, etc are welcome!
[GitLab](https://gitlab.com/TimenZan/vim-concealer) holds the main repository,
although I will also look at issues on
[GitHub](https://github.com/TimenZan/vim-concealer)

## acknowledgements
[Inspiration](https://alok.github.io/2018/04/26/using-vim-s-conceal-to-make-languages-more-tolerable/)

Thanks to the following plugins for providing some of the mappings

- [haskellConcealPlus](ttps://github.com/enomsg/vim-haskellConcealPlus)
- [vim-cute-python](https://github.com/ehamberg/vim-cute-python)
- [python-conceal](https://github.com/alok/python-conceal)
- [c-conceal](https://github.com/alok/c-conceal)
- [rust-conceal](https://github.com/alok/rust-conceal)


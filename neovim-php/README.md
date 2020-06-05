# Neovim Cheat Sheet
[Vim Cheat Sheet](https://vim.rtorr.com/)
* `ctrl + x` and `ctrl+o` Autocomplete list manually (ncm2 do it automatically for you)
## Git
### Status
`:Gstatus` 
#### Options
`u` unstage
`s` stage
`=` opens diff

## Insert
* `o` Jump to next line and switch to insert mode
* `A` 


## Jump
### Code
* `w` Jump to next word in line
### Tags
* `ctrl` + `]` Go to definition
* `ctrl` + `w` and `ctrl` + `]` or `:winc ]` Open the definition in a horizontal split
* `:vert winc ]` Open the definition in a vertical split
* `ctrl` + `t` Jump back

### Files
* `ctrl` + `i` Previous file
* `ctrl` + `o` Next file
* `ctrl` + `w` and `ctrl` + `f` Opens file path

### Windows
* `ctrl` + `w` Arrow key in which direction

## Filemanager
* `:Explore` Open explorer in a horizontal split
* `:Vexplore` Open explorer in a vertical split

## Format
* `shift` + `v` and `=` Standard code formatting
" tag list settings
set nocst 
set tags=$PWD/tags 
let Tlist_Ctags_Cmd = '`which ctags`' 
let Tlist_Show_One_File = 1 
let Tlist_Use_Right_Window = 1

let ctag_rebuild=Tlist_Ctags_Cmd . ' -R -o ' . root_path . '/tags ' . root_path 
map <C-b> :call system(ctag_rebuild)<cr>
map <C-o> :TlistToggle<cr>


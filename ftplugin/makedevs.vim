" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal comments=:# commentstring=#\ %s formatoptions-=t formatoptions+=croql

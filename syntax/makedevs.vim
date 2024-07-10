" Quit when a syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

" From Buildroot makedevs which is an extended version of BusyBox makedevs
" https://buildroot.org/downloads/manual/manual.html#makedev-syntax
syn match  makedevsFilename "^\S\+" oneline nextgroup=makedevsType skipwhite
syn match  makedevsType "[bcdfFpr]" oneline nextgroup=makedevsMode skipwhite contained
syn match  makedevsMode "\(-1\|[[:digit:]]\+\)" oneline nextgroup=makedevsUid skipwhite contained
syn match  makedevsUid "[-_.[:alnum:]]\+" oneline nextgroup=makedevsGid skipwhite contained
syn match  makedevsGid "[-_.[:alnum:]]\+" oneline nextgroup=makedevsMajor skipwhite contained
syn match  makedevsMajor "\(-\|[[:digit:]]\+\)" oneline nextgroup=makedevsMinor skipwhite contained
syn match  makedevsMinor "\(-\|[[:digit:]]\+\)" oneline nextgroup=makedevsStart skipwhite contained
syn match  makedevsStart "\(-\|[[:digit:]]\+\)" oneline nextgroup=makedevsInc skipwhite contained
syn match  makedevsInc   "\(-\|[[:digit:]]\+\)" oneline nextgroup=makedevsCount skipwhite contained
syn match  makedevsCount "\(-\|[[:digit:]]\+\)" oneline contained

syn match  makedevsComment "^#.*"
syn match  makedevsComment "\s#.*"ms=s+1

hi def link makedevsFilename Directory
hi def link makedevsType Type
hi def link makedevsMode Number
hi def link makedevsUid Constant
hi def link makedevsGid Constant
hi def link makedevsMajor Number
hi def link makedevsMinor Number
hi def link makedevsStart Number
hi def link makedevsInc Number
hi def link makedevsCount Number
hi def link makedevsComment Comment

let b:current_syntax = 'makedevs'

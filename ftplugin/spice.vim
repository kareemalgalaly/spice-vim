" Vim filetype plugin
" Language: Spice
" Maintainer: Kareem Ahmad

" let b:did_ftplugin if you want to disable the original/bundled plugin

if exists("b:did_ftplugin")
  finish
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Behavior options

setlocal softtabstop=2
setlocal shiftwidth=2
setlocal tabstop=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Expressions for Autocomplete plugin

let s:eol = '\s*([;$].*)?$'

let s:autocomplete_matches = [
 \      ['\v\cpulse'.s:eol            , '\!PULSE(\:V1 V2 delay rise fall width period)' ],
 \      ['\v\csin'.s:eol              , '\!SIN(\:Vavg Vamp freq)'                       ],
 \      ['\v\cpwl'.s:eol              , '\!PWL(\:T1 V1)'                                ],
 \      ['\v\c^(v\w+)'.s:eol          , ' \1 gnd'                                       ],
 \      ['\v\c^(d\w+)'.s:eol          , ' Vp Vn MODELNAME'                              ],
 \      ['\v\c^(m\w+)'.s:eol          , ' Vd Vg Vs Vb MODELNAME L=\: W='                ],
 \      ['\v\c.subckt\s+(\w+).*'.s:eol, '\n\:\n.ends ; \1'                              ],
 \ ] + autocomplete#common("*", v:false)

 "      ['\v\* (.*)'.s:eol            , '\!** \1 \(repeat("-",61-col("."))\)'           ],
 "      ['\v\** (.*)'.s:eol           , '\!** \1 \(repeat("=",61-col("."))\)'           ],
 "      ['\v\*'.s:eol                 , '\!'.s:com                                      ]

if exists('*autocomplete#register') 
    call autocomplete#register("spice", s:autocomplete_matches) 
    call autocomplete#register("tspice", s:autocomplete_matches) 
endif


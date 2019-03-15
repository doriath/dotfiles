" vim-lsp
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_enabled = 1

function! WrapLspTee(command) abort
  if type(a:command) == type("")
    if $LSP_TEE
     return 'lsp-tee -- ' . a:command
    endif
    return a:command
  fi
  if type(a:command) == type([])
    if $LSP_TEE
     return ['lsp-tee', '-- '] + a:command
    endif
    return a:command
  fi
endfunction

if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
          \ 'name': 'typescript-language-server',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, WrapLspTee('typescript-language-server --stdio')]},
          \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
          \ 'whitelist': ['typescript', 'typescript.tsx'],
          \ })
endif

if executable('rls')
  au User lsp_setup call lsp#register_server({
      \ 'name': 'rls',
      \ 'cmd': {server_info->WrapLspTee(['rustup', 'run', 'stable', 'rls'])},
      \ 'whitelist': ['rust'],
      \ })
endif

let g:lsp_log_verbose = $DEBUG_VIM_LSP
let g:lsp_log_file = expand('~/vim-lsp.log')

" asyncomplete
" noremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)
let g:asyncomplete_smart_completion = 1
let g:asyncomplete_auto_popup = 1
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" vim-codefmt
augroup autoformat_settings
  autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
augroup END

" vim-hardtime
let g:hardtime_default_on = 0

" vim-lsp
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
          \ 'name': 'typescript-language-server',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
          \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
          \ 'whitelist': ['typescript', 'typescript.tsx'],
          \ })
endif

" vim-codefmt
augroup autoformat_settings
  autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
augroup END

" vim-hardtime
let g:hardtime_default_on = 0

" General: packages {{{

" Note: vim-packager automatically executes UpdateRemotePlugins

function s:pack_init() abort
  packadd vim-packager
  call packager#init()
  call packager#add('git@github.com:kristijanhusak/vim-packager', {'type': 'opt'})

  " Autocompletion And IDE Features:
  for coc_package in [
        \ 'git@github.com:neoclide/coc.nvim.git',
        \ 'git@github.com:coc-extensions/coc-svelte.git',
        \ 'git@github.com:fannheyward/coc-markdownlint.git',
        \ 'git@github.com:fannheyward/coc-texlab.git',
        \ 'git@github.com:iamcco/coc-diagnostic.git',
        \ 'git@github.com:iamcco/coc-vimlsp.git',
        \ 'git@github.com:josa42/coc-go.git',
        \ 'git@github.com:neoclide/coc-css.git',
        \ 'git@github.com:neoclide/coc-html.git',
        \ 'git@github.com:neoclide/coc-java.git',
        \ 'git@github.com:neoclide/coc-json.git',
        \ 'git@github.com:neoclide/coc-lists.git',
        \ 'git@github.com:neoclide/coc-pairs.git',
        \ 'git@github.com:neoclide/coc-rls.git',
        \ 'git@github.com:neoclide/coc-snippets.git',
        \ 'git@github.com:neoclide/coc-tsserver.git',
        \ 'git@github.com:neoclide/coc-yaml.git',
        \ 'git@github.com:pappasam/coc-jedi.git',
        \ ]
    call packager#add(coc_package, {
          \ 'do': 'yarn install --frozen-lockfile && yarn build',
          \ })
  endfor

  " Tagbar:
  call packager#add('git@github.com:lvht/tagbar-markdown')
  call packager#add('git@github.com:majutsushi/tagbar')

  " Tim Pope: general, uncategorizable tim pope plugins
  " Notes:
  "   * abolish: convert to snake cases
  call packager#add('git@github.com:tpope/vim-abolish')
  call packager#add('git@github.com:tpope/vim-characterize.git')
  call packager#add('git@github.com:tpope/vim-commentary')
  call packager#add('git@github.com:tpope/vim-ragtag')
  call packager#add('git@github.com:tpope/vim-repeat')
  call packager#add('git@github.com:tpope/vim-scriptease')

  " General:
  call packager#add('git@github.com:Shougo/defx.nvim')
  call packager#add('git@github.com:bronson/vim-visual-star-search')
  call packager#add('git@github.com:fidian/hexmode')
  call packager#add('git@github.com:junegunn/vader.vim')
  call packager#add('git@github.com:kh3phr3n/tabline')
  call packager#add('git@github.com:kristijanhusak/defx-git')
  call packager#add('git@github.com:kristijanhusak/defx-icons')
  call packager#add('git@github.com:mbbill/undotree')
  call packager#add('git@github.com:qpkorr/vim-bufkill')
  call packager#add('git@github.com:romainl/vim-devdocs')
  call packager#add('git@github.com:ryvnf/readline.vim.git')
  call packager#add('git@github.com:simeji/winresizer')
  call packager#add('git@github.com:sjl/strftimedammit.vim')
  call packager#add('git@github.com:t9md/vim-choosewin')
  call packager#add('git@github.com:unblevable/quick-scope')
  call packager#add('git@github.com:wincent/ferret')
  call packager#add('git@github.com:yssl/QFEnter')

  " KeywordPrg:
  call packager#add('git@github.com:pappasam/vim-keywordprg-commands.git')
  call packager#add('git@github.com:romainl/vim-devdocs.git')

  " Fuzzy Finder:
  call packager#add('git@github.com:junegunn/fzf')
  call packager#add('git@github.com:junegunn/fzf.vim')

  " Git:
  call packager#add('git@github.com:junegunn/gv.vim')
  call packager#add('git@github.com:rhysd/git-messenger.vim.git')
  call packager#add('git@github.com:tpope/vim-fugitive')

  " Text Objects:
  call packager#add('git@github.com:machakann/vim-sandwich')
  call packager#add('git@github.com:kana/vim-textobj-user')
  " support additional delimiters
  call packager#add('git@github.com:EvanQuan/vim-textobj-delimiters.git')
  " al/il for the current line
  call packager#add('git@github.com:kana/vim-textobj-line')
  " as/is for a sentence of prose (overrides hard-coded native object & motion)
  call packager#add('git@github.com:reedes/vim-textobj-sentence')
  " az/iz for a block of folded lines; iz does not include fold marker lines
  call packager#add('git@github.com:somini/vim-textobj-fold')
  " ao/io for a block of indentation (i.e. spaces)
  call packager#add('git@github.com:glts/vim-textobj-indblock')
  " ay/iy for a syntax group
  call packager#add('git@github.com:kana/vim-textobj-syntax')
  " ae/ie for entire buffers
  call packager#add('git@github.com:kana/vim-textobj-entire.git')
  " ai/ii for similarly indented, aI/iI for same indentation
  call packager#add('git@github.com:kana/vim-textobj-indent.git')
  " au/iu for a URI, also includes URI handlers and is easy to extend
  call packager#add('git@github.com:jceb/vim-textobj-uri.git')
  " ac/ic/af/if for Python classes and functions
  call packager#add('git@github.com:bps/vim-textobj-python.git')

  " Writing:
  call packager#add('git@github.com:dkarter/bullets.vim')
  call packager#add('git@github.com:jlesquembre/rst-tables.nvim')
  call packager#add('git@github.com:junegunn/goyo.vim')
  call packager#add('git@github.com:junegunn/limelight.vim')
  call packager#add('git@github.com:moiatgit/vim-rst-sections')

  " Previewers:
  call packager#add('git@github.com:iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install --frozen-lockfile'})
  call packager#add('git@github.com:tyru/open-browser.vim')
  call packager#add('git@github.com:weirongxu/plantuml-previewer.vim')

  " Code Formatters:
  call packager#add('git@github.com:pappasam/vim-filetype-formatter')

  " Repl Integration:
  " call packager#add('git@github.com:jpalardy/vim-slime.git')
  call packager#add('git@github.com:pappasam/nvim-repl.git')

  " Indentation Only:
  call packager#add('git@github.com:Vimjas/vim-python-pep8-indent')
  call packager#add('git@github.com:Yggdroot/indentLine')
  call packager#add('git@github.com:vim-scripts/groovyindent-unix')

  " Syntax Theme:
  call packager#add('git@github.com:NLKNguyen/papercolor-theme')

  " Syntax Highlighting:
  call packager#add('git@github.com:Glench/Vim-Jinja2-Syntax')
  call packager#add('git@github.com:MaxMEllon/vim-jsx-pretty.git')
  call packager#add('git@github.com:NLKNguyen/c-syntax.vim')
  call packager#add('git@github.com:StanAngeloff/php.vim')
  call packager#add('git@github.com:autowitch/hive.vim')
  call packager#add('git@github.com:calviken/vim-gdscript3')
  call packager#add('git@github.com:cespare/vim-toml')
  call packager#add('git@github.com:chr4/nginx.vim')
  call packager#add('git@github.com:derekwyatt/vim-scala')
  call packager#add('git@github.com:ekalinin/Dockerfile.vim')
  call packager#add('git@github.com:evanleck/vim-svelte')
  call packager#add('git@github.com:farfanoide/vim-kivy')
  call packager#add('git@github.com:gisraptor/vim-lilypond-integrator.git')
  call packager#add('git@github.com:godlygeek/tabular')
  call packager#add('git@github.com:groenewege/vim-less')
  call packager#add('git@github.com:hail2u/vim-css3-syntax.git')
  call packager#add('git@github.com:hashivim/vim-terraform')
  call packager#add('git@github.com:hashivim/vim-vagrant')
  call packager#add('git@github.com:jparise/vim-graphql')
  call packager#add('git@github.com:killphi/vim-ebnf')
  call packager#add('git@github.com:leafgarland/typescript-vim')
  call packager#add('git@github.com:lervag/vimtex')
  call packager#add('git@github.com:marshallward/vim-restructuredtext')
  call packager#add('git@github.com:martinda/Jenkinsfile-vim-syntax')
  call packager#add('git@github.com:mattn/vim-xxdcursor')
  call packager#add('git@github.com:mopp/rik_octave.vim')
  call packager#add('git@github.com:neoclide/jsonc.vim.git')
  call packager#add('git@github.com:neovimhaskell/haskell-vim')
  call packager#add('git@github.com:othree/html5.vim')
  call packager#add('git@github.com:pangloss/vim-javascript')
  call packager#add('git@github.com:pappasam/plantuml-syntax')
  call packager#add('git@github.com:pearofducks/ansible-vim')
  call packager#add('git@github.com:peitalin/vim-jsx-typescript.git')
  call packager#add('git@github.com:plasticboy/vim-markdown')
  call packager#add('git@github.com:raimon49/requirements.txt.vim')
  call packager#add('git@github.com:ron-rs/ron.vim')
  call packager#add('git@github.com:rust-lang/rust.vim')
  call packager#add('git@github.com:tomlion/vim-solidity')
  call packager#add('git@github.com:vim-python/python-syntax')
  call packager#add('git@github.com:vim-scripts/SAS-Syntax')
  call packager#add('git@github.com:vimoutliner/vimoutliner')
endfunction

command! PackInstall call s:pack_init() | call packager#install()
command! -bang PackUpdate call s:pack_init() | call packager#update({ 'force_hooks': '<bang>' })
command! PackClean call s:pack_init() | call packager#clean()
command! PackStatus call s:pack_init() | call packager#status()
command! -bang PU call s:pack_init() | call packager#clean() | call packager#update({ 'force_hooks': '<bang>' })

" }}}
" General: mappings {{{

let mapleader = ','

function! s:default_key_mappings()
  " Escape: also clears highlighting
  nnoremap <silent> <esc> :noh<return><esc>

  " J: unmap in normal mode unless range explicitly specified
  nnoremap <silent> <expr> J v:count == 0 ? '<esc>' : 'J'

  " Shifting: in visual mode, make shifts keep selection
  vnoremap < <gv
  vnoremap > >gv

  " Exit: Preview, Help, QuickFix, and Location List
  inoremap <silent> <C-c> <Esc>:pclose <BAR> cclose <BAR> lclose <CR>a
  nnoremap <silent> <C-c> :pclose <BAR> cclose <BAR> lclose <CR>

  " InsertModeHelpers: Insert one line above after enter
  inoremap <M-CR> <CR><C-o>O

  " MoveVisual: up and down visually only if count is specified before
  nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
  vnoremap <expr> k v:count == 0 ? 'gk' : 'k'
  nnoremap <expr> j v:count == 0 ? 'gj' : 'j'
  vnoremap <expr> j v:count == 0 ? 'gj' : 'j'

  " Macro Repeater:
  " Enable calling a function within the mapping for @
  nnoremap <expr> <plug>@init AtInit()
  " A macro could, albeit unusually, end in Insert mode.
  inoremap <expr> <plug>@init "\<c-o>".AtInit()
  nnoremap <expr> <plug>qstop QStop()
  inoremap <expr> <plug>qstop "\<c-o>".QStop()
  " The following code allows pressing . immediately after
  " recording a macro to play it back.
  nmap <expr> @ AtReg()
  " Finally, remap q! Recursion is actually useful here I think,
  " otherwise I would use 'nnoremap'.
  nmap <expr> q QStart()

  " MoveTabs: goto tab number. Same as Firefox
  nnoremap <A-1> 1gt
  nnoremap <A-2> 2gt
  nnoremap <A-3> 3gt
  nnoremap <A-4> 4gt
  nnoremap <A-5> 5gt
  nnoremap <A-6> 6gt
  nnoremap <A-7> 7gt
  nnoremap <A-8> 8gt
  nnoremap <A-9> 9gt

  " Substitute: replace word under cursor
  nnoremap <leader><leader>s yiw:%s/\<<C-R>0\>//gc<Left><Left><Left>
  vnoremap <leader><leader>s y:%s/<C-R>0//gc<Left><Left><Left>

  " IndentComma: placing commas one line down; usable with repeat operator '.'
  nnoremap <silent> <Plug>NewLineComma f,wi<CR><Esc>
        \:call repeat#set("\<Plug>NewLineComma")<CR>
  nmap <leader><CR> <Plug>NewLineComma

  " Jinja2Toggle: the following mapping toggles jinja2 for any filetype
  nnoremap <silent> <leader><leader>j :Jinja2Toggle<CR>

  " ToggleRelativeNumber: uses custom functions
  nnoremap <silent> <leader>R :ToggleNumber<CR>
  nnoremap <silent> <leader>r :ToggleRelativeNumber<CR>

  " TogglePluginWindows:
  nnoremap <silent> <space>j :Defx
        \ -buffer-name=defx
        \ -columns=mark:git:indent:icons:filename:type:size:time
        \ -direction=topleft
        \ -search=`expand('%:p')`
        \ -session-file=`g:custom_defx_state`
        \ -ignored-files=`g:defx_ignored_files`
        \ -split=vertical
        \ -toggle
        \ -winwidth=31
        \ <CR>
  nnoremap <silent> <space>J :Defx `expand('%:p:h')`
        \ -buffer-name=defx
        \ -columns=mark:git:indent:icons:filename:type:size:time
        \ -direction=topleft
        \ -search=`expand('%:p')`
        \ -ignored-files=`g:defx_ignored_files`
        \ -split=vertical
        \ -winwidth=31
        \ <CR>
  nnoremap <silent> <space>l :TagbarToggle <CR>
  nnoremap <silent> <space>u :UndotreeToggle<CR>

  " Choosewin: (just like tmux)
  nnoremap <C-w>q :ChooseWin<CR>

  " Goyo And Writing:
  nnoremap <leader><leader>g :Goyo<CR>
  nnoremap <leader><leader>l :Limelight!!<CR>
  nmap     <leader><leader>v <Plug>Veil

  " IndentLines: toggle if indent lines is visible
  nnoremap <silent> <leader>i :IndentLinesToggle<CR>

  " ResizeWindow: up and down; relies on custom functions
  nnoremap <silent> <leader><leader>h :ResizeWindowHeight<CR>
  nnoremap <silent> <leader><leader>w :ResizeWindowWidth<CR>

  " Repl: my very own repl plugin
  nnoremap <leader><leader>e :ReplToggle<CR>
  nmap     <leader>e <Plug>ReplSendLine
  vmap     <leader>e <Plug>ReplSendVisual

  " Sandwich: below mappings address the issue raised here:
  " https://github.com/machakann/vim-sandwich/issues/62
  xmap s  <Nop> xmap ib <Plug>(textobj-sandwich-auto-i)
  omap s  <Nop>
  xmap ib <Plug>(textobj-sandwich-auto-i)
  omap ib <Plug>(textobj-sandwich-auto-i)
  xmap ab <Plug>(textobj-sandwich-auto-a)
  omap ab <Plug>(textobj-sandwich-auto-a)

  xmap iq <Plug>(textobj-sandwich-query-i)
  omap iq <Plug>(textobj-sandwich-query-i)
  xmap aq <Plug>(textobj-sandwich-query-a)
  omap aq <Plug>(textobj-sandwich-query-a)

  " FZF: create shortcuts for finding stuff
  nnoremap <silent> <C-p> :call <SID>fzf_files_avoid_defx()<CR>
  nnoremap <silent> <C-b> :call <SID>fzf_buffers_avoid_defx()<CR>
  nnoremap          <C-n> yiw:Rg <C-r>"<CR>
  vnoremap          <C-n> y:Rg <C-r>"<CR>

  " DeleteHiddenBuffers: shortcut to make this easier
  nnoremap <leader>d :DeleteInactiveBuffers<CR>

  " SearchBackward: remap comma to single quote
  nnoremap ' ,

  " FiletypeFormat: remap leader f to do filetype formatting
  nnoremap <silent> <leader>f :FiletypeFormat<cr>
  vnoremap <silent> <leader>f :FiletypeFormat<cr>

  " Open Browser: override netrw
  nmap gx <Plug>(openbrowser-smart-search)
  vmap gx <Plug>(openbrowser-smart-search)

  " Run Or Build:
  nnoremap <leader><leader>r :Run<CR>

  " GitMessenger:
  nmap <leader>sg <Plug>(git-messenger)

  " Coc: settings for coc.nvim
  nmap     <silent>        <C-]> <Plug>(coc-definition)
  nmap     <silent>        <C-LeftMouse> <Plug>(coc-definition)
  nnoremap <silent>        <C-K> :call <SID>show_documentation()<CR>
  nmap     <silent>        <leader>st <Plug>(coc-type-definition)
  nmap     <silent>        <leader>si <Plug>(coc-implementation)
  nmap     <silent>        <leader>su <Plug>(coc-references)
  nmap     <silent>        <leader>sr <Plug>(coc-rename)
  nnoremap <silent>        <leader>sn :CocNext<CR>
  nnoremap <silent>        <leader>sp :CocPrev<CR>
  nnoremap <silent>        <leader>sl :CocListResume<CR>
  nnoremap <silent>        <leader>sa :call CocActionAsync('showSignatureHelp')<CR>
  nnoremap <silent>        <leader>sc :CocList commands<cr>
  nnoremap <silent>        <leader>ss :CocList outline<cr>
  nnoremap <silent>        <leader>sw :CocList -I symbols<cr>
  inoremap <silent> <expr> <c-space> coc#refresh()
  nnoremap <silent> <expr> <C-e> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-e>"
  nnoremap <silent> <expr> <C-y> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-y>"
  imap     <silent>        <C-l> <Plug>(coc-snippets-expand)
  inoremap <silent> <expr> <CR> pumvisible() ? '<CR>' : '<C-g>u<CR><c-r>=coc#on_enter()<CR>'
  nnoremap <silent>        <leader>a :CocDiagnosticToggle<CR>
  nmap     <silent>        <leader>n <Plug>(coc-diagnostic-next)
  nmap     <silent>        <leader>p <Plug>(coc-diagnostic-prev)

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Mouse Configuration: remaps mouse to work better in terminal

  " Out Jump List: <C-RightMouse> already mapped to something like <C-t>
  nnoremap <RightMouse> <C-o>

  " Clipboard Copy: Visual mode copy is pretty simple
  vnoremap <leader>y "+y
  nnoremap <leader>y "+y

  " Mouse Copy: system copy mouse characteristics
  vnoremap <RightMouse> "+y

  " Mouse Paste: make it come from the system register
  nnoremap <MiddleMouse> "+<MiddleMouse>

  " Scrolling Dropdown: dropdown scrollable + click to select highlighted
  inoremap <expr> <S-ScrollWheelUp>
        \ pumvisible() ?
        \ '<C-p><C-p><C-p><C-p><C-p><C-p><C-p><C-p><C-p><C-p>' :
        \ '<Esc><S-ScrollWheelUp>'
  inoremap <expr> <S-ScrollWheelDown>
        \ pumvisible() ?
        \ '<C-n><C-n><C-n><C-n><C-n><C-n><C-n><C-n><C-n><C-n>' :
        \ '<Esc><S-ScrollWheelDown>'
  inoremap <expr> <ScrollWheelUp>
        \ pumvisible() ? '<C-p>' : '<Esc><ScrollWheelUp>'
  inoremap <expr> <ScrollWheelDown>
        \ pumvisible() ? '<C-n>' : '<Esc><ScrollWheelDown>'
  inoremap <expr> <LeftMouse>
        \ pumvisible() ? '<CR><Backspace>' : '<Esc><LeftMouse>'

  " Auto-execute all filetypes
  let &filetype=&filetype
endfunction

call s:default_key_mappings()

" helper to remap d, u, and q for readonly buffers
function! s:key_mappings_readonly()
  nnoremap <silent> <buffer> d <C-d>
  nnoremap <silent> <buffer> u <C-u>
  nnoremap <silent> <buffer> q :q<CR>
endfunction

augroup custom_remap_click
  autocmd!
  autocmd FileType qf,markdown,rst nnoremap <buffer> <2-LeftMouse> <2-LeftMouse>
augroup end

" Mouse Open Close Folds: open folds with the mouse, and close the folds
" open operation taken from: https://stackoverflow.com/a/13924974
augroup custom_remap_folds
  autocmd!
  autocmd FileType vim,tmux,bash,zsh,sh
        \ nnoremap <expr> <2-LeftMouse>
        \ foldclosed(line('.')) == -1 ? '<2-LeftMouse>' : '<LeftMouse>zo'
  autocmd FileType vim,tmux,bash,zsh,sh
        \ nnoremap <RightMouse> <LeftMouse><LeftRelease>zc
augroup end

augroup custom_remap_man_help
  autocmd!
  autocmd FileType man,help nnoremap <buffer> <silent> <C-]> <C-]>
  autocmd FileType man,help nnoremap <buffer> <C-LeftMouse> <C-LeftMouse>
  autocmd FileType man,help nnoremap <buffer> <expr> d &modifiable == 0 ? '<C-d>' : 'd'
  autocmd FileType man,help nnoremap <buffer> <expr> u &modifiable == 0 ? '<C-u>' : 'u'
  autocmd FileType man,help nnoremap <buffer> <expr> q &modifiable == 0 ? ':q<cr>' : 'q'
augroup end

augroup custom_remap_rst
  autocmd!
  autocmd FileType rst nnoremap <buffer> <leader>w :HovercraftSlide<CR>
  autocmd FileType rst nnoremap <buffer> <leader>f :TableRstFormat<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>s0 :call RstSetSection(0)<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>s1 :call RstSetSection(1)<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>s2 :call RstSetSection(2)<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>s3 :call RstSetSection(3)<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>s4 :call RstSetSection(4)<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>s5 :call RstSetSection(5)<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>s6 :call RstSetSection(6)<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>sk :call RstGoPrevSection()<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>sj :call RstGoNextSection()<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>sa :call RstIncrSectionLevel()<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>sx :call RstDecrSectionLevel()<CR>
  autocmd FileType rst nnoremap <buffer> <silent> <leader>sl :call RstSectionLabelize()<CR>
augroup end

augroup custom_remap_defx
  autocmd!
  autocmd FileType defx call s:defx_buffer_remappings()
  autocmd FileType defx nmap <buffer> <silent> gp <Plug>(defx-git-prev)
  autocmd FileType defx nmap <buffer> <silent> gn <Plug>(defx-git-next)
  autocmd FileType defx nmap <buffer> <silent> gs <Plug>(defx-git-stage)
  autocmd FileType defx nmap <buffer> <silent> gu <Plug>(defx-git-reset)
  autocmd FileType defx nmap <buffer> <silent> gd <Plug>(defx-git-discard)
  autocmd FileType defx nnoremap <buffer> <silent> <C-l> :ResizeWindowWidth<CR>
augroup end

augroup custom_init_vim
  autocmd!
  autocmd BufNewFile,BufRead,BufEnter init.vim
        \ nnoremap <buffer> <silent> gf :call <SID>gf_vimrc_open_plugin()<CR>
  autocmd BufNewFile,BufRead,BufEnter init.vim
        \ nnoremap <buffer> <silent> gx :call <SID>gx_vimrc_open_plugin()<CR>
augroup end

" }}}
" Package: coc.nvim {{{

" Coc:
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'help ' . expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

let g:coc_snippet_next = '<C-l>'
let g:coc_snippet_prev = '<C-h>'
let g:coc_start_at_startup = 1
let g:coc_filetype_map = {
      \ 'python.jinja2': 'python',
      \ 'sql.jinja2': 'sql',
      \ 'yaml.ansible': 'yaml',
      \ 'yaml.docker-compose': 'yaml',
      \ }

" Customization:
function! s:coc_diagnostic_disable()
  call coc#config('diagnostic.enable', v:false)
  let g:coc_custom_diagnostic_enabled = v:false
  silent CocRestart
  echom 'Disabled: Coc Diagnostics'
endfunction

function! s:coc_diagnostic_enable()
  call coc#config('diagnostic.enable', v:true)
  let g:coc_custom_diagnostic_enabled = v:true
  echom 'Enabled: Coc Diagnostics'
endfunction

function! s:coc_diagnostic_toggle()
  if g:coc_custom_diagnostic_enabled == v:true
    call s:coc_diagnostic_disable()
  else
    call s:coc_diagnostic_enable()
  endif
endfunction

function! s:coc_init()
  let g:coc_custom_diagnostic_enabled = v:false
endfunction

augroup custom_coc
  autocmd!
  autocmd VimEnter * call s:coc_init()
  autocmd FileType terraform let b:coc_pairs = [
        \ ['(', ')'],
        \ ['[', ']'],
        \ ['{', '}'],
        \ ['<', '>'],
        \ ['"', '"'],
        \ ]
  autocmd FileType make let b:coc_pairs = [
        \ ['(', ')'],
        \ ['[', ']'],
        \ ['{', '}'],
        \ ]
  autocmd FileType plantuml setlocal omnifunc=syntaxcomplete#Complete
  autocmd CursorHoldI * call CocActionAsync('showSignatureHelp')
augroup end

command! CocDiagnosticToggle call s:coc_diagnostic_toggle()
command! CocDiagnosticEnable call s:coc_diagnostic_enable()
command! CocDiagnosticDisable call s:coc_diagnostic_disable()

" }}}
" General: options {{{

" Enable filetype detection, plugin loading, and indentation loading
filetype plugin indent on

" Code Completion:
set completeopt=menuone,longest
set wildmode=longest,list,full
set wildmenu

" Messages:
" c = don't give |ins-completion-menu| messages; they're noisy
" I = ignore startup message
set shortmess+=c
set shortmess+=I

" Hidden Buffer: enable instead of having to write each buffer
set hidden

" Sign Column: always show it
set signcolumn=yes

" Mouse: enable GUI mouse support in all modes
set mouse=a

" SwapFiles: prevent their creation
set nobackup
set nowritebackup
set noswapfile

" Command Line Height: higher for display for messages
set cmdheight=2

" Line Wrapping: do not wrap lines by default
set nowrap

" Indentation:
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=8

" Filename: for gf (@-@='@', see: https://stackoverflow.com/a/45244758)
set isfname+=@-@
set isfname+=:

" Highlight Search: do that
" note: hlsearcha nd nohlsearch are defined in autocmd outside function
set incsearch
set inccommand=nosplit

" Spell Checking:
set dictionary=$HOME/.american-english-with-propcase.txt
set spelllang=en_us

" Single Space After Punctuation: useful when doing :%j (the opposite of gq)
set nojoinspaces

set showtabline=2

set autoread

set grepprg=rg\ --vimgrep

" Paste: this is actually typed <C-/>, but term nvim thinks this is <C-_>
set pastetoggle=<C-_>

" Don't timeout on mappings
set notimeout
" Do timeout on terminal key codes
set ttimeout

" Local Vimrc: execute commands securely from $PWD/.nvimrc
" *exrc* if set, the current directory is searched for 3 files in order
"   (Unix), using the first it finds: '.nvimrc', '_nvimrc', '.exrc'
" *secure* disable unsafe commands in your project-specific config files
"   This will prevent :autocmd, shell and write commands from being run inside
"   project-specific config files unless they’re owned by you.
set exrc
set secure

" Default Shell: 'shell' defaults to $SHELL

" Numbering:
set number

" Window Splitting: Set split settings (options: splitright, splitbelow)
set splitright

" Terminal Color Support: only set guicursor if truecolor
if $COLORTERM ==# 'truecolor'
  set termguicolors
else
  set guicursor=
endif

" Set Background: defaults do dark
set background=dark

" Colorcolumn:
set colorcolumn=80

" Status Line: specifics for custom status line
set laststatus=2
set ttimeoutlen=50
set noshowmode

" ShowCommand: turn off character printing to vim status line
set noshowcmd

" Updatetime: time Vim waits to do something after I stop moving
set updatetime=300

" Linux Dev Path: system libraries
set path+=/usr/include/x86_64-linux-gnu/

" Vim History: for command line; can't imagine that more than 100 is needed
set history=100

augroup custom_incsearch_highlight
  autocmd!
  autocmd CmdlineEnter /,\? set hlsearch
  autocmd CmdlineLeave /,\? set nohlsearch
augroup end

" }}}
" General: syntax and colorscheme {{{

" Redraw Window: whenever a window regains focus
augroup custom_redraw_on_refocus
  autocmd!
  autocmd FocusGained * redraw!
augroup end

" Typescript: fixes
augroup custom_syntax_typescript
  autocmd!
  autocmd ColorScheme * highlight link typescriptExceptions Exception
augroup end

" Vim Help: fixes
augroup custom_syntax_vimhelp
  autocmd!
  autocmd ColorScheme * highlight clear helpStar
  autocmd ColorScheme * highlight clear helpIgnore
  autocmd ColorScheme * highlight clear helpBacktick
  autocmd ColorScheme * highlight helpStar guifg=cyan1
  autocmd ColorScheme * highlight helpIgnore guifg=cyan1
  autocmd ColorScheme * highlight helpBacktick guifg=cyan1
augroup end

" QuickScope: choose primary and secondary colors
augroup custom_syntax_quickscope
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg=LimeGreen ctermfg=Green gui=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg=turquoise1 ctermfg=Cyan gui=underline
augroup end

" Spell Checking:
augroup custom_syntax_spelling
  autocmd!
  autocmd ColorScheme * highlight clear SpellBad
  autocmd ColorScheme * highlight clear SpellRare
  autocmd ColorScheme * highlight clear SpellCap
  autocmd ColorScheme * highlight clear SpellLocal
  autocmd ColorScheme * highlight SpellBad ctermfg=DarkRed guifg=red1 gui=underline,italic
  autocmd ColorScheme * highlight SpellRare ctermfg=DarkGreen guifg=ForestGreen gui=underline,italic
  autocmd ColorScheme * highlight SpellCap ctermfg=Yellow guifg=yellow gui=underline,italic
  autocmd ColorScheme * highlight SpellLocal ctermfg=DarkMagenta guifg=magenta gui=underline,italic
augroup end

" Trailing Whitespace: (initial highlight below doesn't matter)
highlight EOLWS ctermbg=DarkCyan
match EOLWS /\s\+$/
augroup custom_syntax_whitespace
  autocmd!
  " mkdLineBreak is a link group; special 'link' syntax required here
  autocmd ColorScheme * highlight link mkdLineBreak NONE
  autocmd ColorScheme * highlight EOLWS guibg=CornflowerBlue ctermbg=DarkCyan

  autocmd InsertEnter * highlight clear EOLWS
  autocmd InsertLeave * highlight EOLWS guibg=CornflowerBlue ctermbg=DarkCyan

  autocmd FileType defx highlight clear EOLWS
augroup end

" Cursorline: disable, then override if necessary
highlight CursorLine cterm=NONE
augroup custom_cursorline
  autocmd!
  autocmd FileType tagbar setlocal cursorline
augroup end

" ********************************************************************
" Papercolor: options
" ********************************************************************
let g:PaperColor_Theme_Options = {}
let g:PaperColor_Theme_Options.theme = {}

" Bold And Italics:
let g:PaperColor_Theme_Options.theme.default = {
      \ 'allow_bold': v:true,
      \ 'allow_italic': v:true,
      \ }

" Folds And Highlights:
let g:PaperColor_Theme_Options.theme['default.dark'] = {}
let g:PaperColor_Theme_Options.theme['default.dark'].override = {
      \ 'folded_bg' : ['gray22', '0'],
      \ 'folded_fg' : ['gray69', '6'],
      \ 'visual_fg' : ['gray12', '0'],
      \ 'visual_bg' : ['gray', '6'],
      \ }

" Language Specific Overrides:
let g:PaperColor_Theme_Options.language = {
      \    'python': {
      \      'highlight_builtins' : 1,
      \    },
      \    'cpp': {
      \      'highlight_standard_library': 1,
      \    },
      \    'c': {
      \      'highlight_builtins' : 1,
      \    }
      \ }

function s:set_papercolor()
  try
    colorscheme PaperColor
  catch
    echo 'An error occured while configuring PaperColor'
  endtry
endfunction

" must set this before vim-enter; Coc bugs out otherwise
call s:set_papercolor()

" }}}
" General: filetype {{{

augroup custom_filetype_recognition
  autocmd!
  autocmd BufNewFile,BufRead,BufEnter *.hql,*.q set filetype=hive
  autocmd BufNewFile,BufRead,BufEnter *.config,.cookiecutterrc set filetype=yaml
  autocmd BufNewFile,BufRead,BufEnter .jrnl_config,*.bowerrc,*.babelrc,*.eslintrc,*.slack-term
        \ set filetype=json
  autocmd BufNewFile,BufRead,BufEnter *.asm set filetype=nasm
  autocmd BufNewFile,BufRead,BufEnter *.handlebars set filetype=html
  autocmd BufNewFile,BufRead,BufEnter *.m,*.oct set filetype=octave
  autocmd BufNewFile,BufRead,BufEnter *.jsx,*.js set filetype=javascript
  autocmd BufNewFile,BufRead,BufEnter *.cfg,*.ini,.coveragerc,*pylintrc
        \ set filetype=dosini
  autocmd BufNewFile,BufRead,BufEnter *.tsv set filetype=tsv
  autocmd BufNewFile,BufRead,BufEnter *.toml set filetype=toml
  autocmd BufNewFile,BufRead,BufEnter Dockerfile.* set filetype=dockerfile
  autocmd BufNewFile,BufRead,BufEnter Makefile.* set filetype=make
  autocmd BufNewFile,BufRead,BufEnter poetry.lock,Pipfile set filetype=toml
  autocmd BufNewFile,BufRead,BufEnter .gitignore,.dockerignore
        \ set filetype=conf
  autocmd BufNewFile,BufRead,BufEnter *.sql.j2 set filetype=sql.jinja2
  autocmd BufNewFile,BufRead,BufEnter *.py.j2 set filetype=python.jinja2
  autocmd BufNewFile,BufRead,BufEnter tsconfig.json,*.jsonc,.markdownlintrc
        \ set filetype=jsonc
augroup end

" }}}
" General: indentation {{{

augroup custom_indentation
  autocmd!
  autocmd Filetype python,c,haskell,rust,kv,nginx,asm,nasm,gdscript3
        \ setlocal shiftwidth=4 softtabstop=4 tabstop=8
  autocmd Filetype dot setlocal autoindent cindent
  autocmd Filetype make,tsv,votl,go,gomod
        \ setlocal tabstop=4 softtabstop=0 shiftwidth=4 noexpandtab
  " Prevent auto-indenting from occuring
  autocmd Filetype yaml setlocal indentkeys-=<:>

  autocmd Filetype ron setlocal cindent
        \ cinkeys=0{,0},0(,0),0[,0],:,0#,!^F,o,O,e
        \ cinoptions+='(s,m2'
        \ cinoptions+='(s,U1'
        \ cinoptions+='j1'
        \ cinoptions+='J1'
augroup end

" }}}
" General: statusline & tabline {{{

" Tab Line
set tabline=%t

" Status Line
set laststatus=2
set statusline=
set statusline+=%#CursorLine#
set statusline+=\ %{mode()}
set statusline+=\ %*\  " Color separator + space
set statusline+=%{&paste?'[P]':''}
set statusline+=%{&spell?'[S]':''}
set statusline+=%r
set statusline+=%t
set statusline+=%m
set statusline+=%=
set statusline+=\ %y\  " file type
set statusline+=%#CursorLine#
set statusline+=\ %{&ff}\  " Unix or Dos
set statusline+=%*  " default color
set statusline+=\ %{strlen(&fenc)?&fenc:'none'}\  " file encoding

" Status Line
augroup custom_statusline
  autocmd!
  autocmd FileType defx setlocal statusline=\ defx\ %#CursorLine#
augroup end

" }}}
" General: environment variables {{{

" Path: add node_modules for language servers / linters / other stuff
let $PATH = $PWD . '/node_modules/.bin:' . $PATH

" }}}
" General: helptags {{{

helptags ~/.config/nvim/doc

" }}}
" General: init.vim helpers {{{

function! s:gf_vimrc_open_plugin()
  let ssh_url = expand('<cfile>')
  let ssh_components = split(ssh_url, '/')
  if len(ssh_components) != 2
    " do regular 'gf'
    normal! gf
    return
  endif
  let directory = ssh_components[1]
  let parent_directory = directory == 'vim-packager' ? 'opt/' : 'start/'
  let path = '~/.config/nvim/pack/packager/' . parent_directory . directory
  execute 'tabe ' . path
  execute 'lcd ' . path
endfunction

function! s:gx_vimrc_open_plugin()
  let ssh_url = expand('<cfile>')
  let ssh_components = split(ssh_url, ':')
  if len(ssh_components) != 2
    " do regular 'gx'
    normal! gx
    return
  endif
  let path = ssh_components[1]
  execute 'OpenBrowser ' . 'https://github.com/' . path
endfunction

" }}}
" General: abbreviations {{{

" If in_command is at beginning of line : return out_command
" Else : return in_command.
function! s:abbr_help(in_command, out_command)
  if (getcmdtype() == ':' && getcmdline() =~ '^' . a:in_command . '$')
    return a:out_command
  else
    return a:in_command
  endif
endfunction

" Using Ack and Acks brings up quickfix automatically
cnoreabbrev <expr> Ack <SID>abbr_help('Ack', 'Ack<C-f>i')
cnoreabbrev <expr> Acks <SID>abbr_help('Acks', 'Acks<C-f>i')

" Open init.vim
cnoreabbrev <expr> v <SID>abbr_help('v', 'edit ~/dotfiles/dotfiles/.config/nvim/init.vim')

" Open zshrc
cnoreabbrev <expr> z <SID>abbr_help('z', 'edit ~/dotfiles/dotfiles/.zshrc')

" Open settings for language server files
cnoreabbrev <expr> coc <SID>abbr_help('coc', 'edit ~/dotfiles/dotfiles/.config/nvim/coc-settings.json')
cnoreabbrev <expr> snip <SID>abbr_help('snip', 'CocCommand snippets.editSnippets')

" 'c' is abbreviation for 'close'. I use it way more often than 'change'
cnoreabbrev <expr> c <SID>abbr_help('c', 'close')

" }}}
" General: comment & text format options {{{

" Notes:
" commentstring: read by vim-commentary; must be one template
" comments: csv of comments.
" formatoptions: influences how Vim formats text
"   ':help fo-table' will get the desired result
augroup custom_comment_config
  autocmd!
  autocmd FileType dosini
        \ setlocal commentstring=#\ %s comments=:#,:;
  autocmd FileType tmux
        \ setlocal commentstring=#\ %s comments=:# formatoptions=jcroql
  autocmd FileType jsonc
        \ setlocal commentstring=//\ %s comments=:// formatoptions=jcroql
  autocmd FileType sh setlocal formatoptions=jcroql
  autocmd FileType typescript.tsx,typescript
        \ setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
  autocmd FileType markdown setlocal commentstring=<!--\ %s\ -->
augroup end

" }}}
" General: colorColumn different widths for different filetypes {{{

augroup custom_colorcolumn
  autocmd!
  autocmd FileType gitcommit setlocal colorcolumn=73 textwidth=72
  autocmd Filetype html,text,markdown,rst,fzf setlocal colorcolumn=0
augroup end

" }}}
" General: writing {{{

function! s:abolish_correct()
  " Started from:
  " https://github.com/tpope/tpope/blob/94b1f7c33ee4049866f0726f96d9a0fb5fdf868f/.vim/after/plugin/abolish_tpope.vim
  if !exists('g:loaded_abolish')
    echom 'Abolish does not exist, skipping...'
    return
  endif
  Abolish Lidsa                       Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  Abolish Tqbf                        The quick, brown fox jumps over the lazy dog
  Abolish adn                         and
  Abolish afterword{,s}               afterward{}
  Abolish anomol{y,ies}               anomal{}
  Abolish austrail{a,an,ia,ian}       austral{ia,ian}
  Abolish cal{a,e}nder{,s}            cal{e}ndar{}
  Abolish delimeter{,s}               delimiter{}
  Abolish despara{te,tely,tion}       despera{}
  Abolish destionation{,s}            destination{}
  Abolish d{e,i}screp{e,a}nc{y,ies}   d{i}screp{a}nc{}
  Abolish euphamis{m,ms,tic,tically}  euphemis{}
  Abolish hense                       hence
  Abolish hte                         the
  Abolish improvment{,s}              improvement{}
  Abolish inherant{,ly}               inherent{}
  Abolish lastest                     latest
  Abolish nto                         not
  Abolish nto                         not
  Abolish ot                          to
  Abolish persistan{ce,t,tly}         persisten{}
  Abolish rec{co,com,o}mend{,s,ed,ing,ation} rec{om}mend{}
  Abolish referesh{,es}               refresh{}
  Abolish reproducable                reproducible
  Abolish resouce{,s}                 resource{}
  Abolish restraunt{,s}               restaurant{}
  Abolish scflead                     supercalifragilisticexpialidocious
  Abolish segument{,s,ed,ation}       segment{}
  Abolish seperat{e,es,ed,ing,ely,ion,ions,or} separat{}
  Abolish si                          is
  Abolish teh                         the
  Abolish {,in}consistan{cy,cies,t,tly} {}consisten{}
  Abolish {,ir}releven{ce,cy,t,tly}   {}relevan{}
  Abolish {,non}existan{ce,t}         {}existen{}
  Abolish {,re}impliment{,s,ing,ed,ation} {}implement{}
  Abolish {,un}nec{ce,ces,e}sar{y,ily} {}nec{es}sar{}
  Abolish {,un}orgin{,al}             {}origin{}
  Abolish {c,m}arraige{,s}            {}arriage{}
  Abolish {despa,sepe}rat{e,es,ed,ing,ely,ion,ions,or} {despe,sepa}rat{}
  Abolish {les,compar,compari}sion{,s} {les,compari,compari}son{}
endfunction

augroup custom_writing
  autocmd!
  autocmd VimEnter * call s:abolish_correct()
  autocmd FileType markdown,rst,text,gitcommit
        \ setlocal wrap linebreak nolist
        \ | call textobj#sentence#init()
  autocmd FileType requirements setlocal nospell
  autocmd BufNewFile,BufRead *.html,*.tex setlocal wrap linebreak nolist
augroup end

" }}}
" General: digraphs {{{

digraph jj 699  " Hawaiian character ʻ

" }}}
" General: folding {{{

augroup custom_fold_settings
  autocmd!
  autocmd FileType vim,tmux,bash,zsh,sh
        \ setlocal foldenable foldmethod=marker foldnestmax=1
  autocmd FileType markdown,rst
        \ setlocal nofoldenable
  autocmd FileType yaml
        \ setlocal nofoldenable foldmethod=indent foldnestmax=1
augroup end

" }}}
" General: trailing whitespace {{{

function! s:trim_whitespace()
  let l:save = winsaveview()
  if &ft == 'markdown'
    " Replace lines with only trailing spaces
    %s/^\s\+$//e
    " Replace lines with exactly one trailing space with no trailing spaces
    %g/\S\s$/s/\s$//g
    " Replace lines with more than 2 trailing spaces with 2 trailing spaces
    %s/\s\s\s\+$/  /e
  else
    " Remove all trailing spaces
    %s/\s\+$//e
  endif
  call winrestview(l:save)
endfunction

command! TrimWhitespace call s:trim_whitespace()

augroup custom_fix_whitespace_save
  autocmd!
  autocmd BufWritePre * TrimWhitespace
augroup end

" }}}
" General: alacritty callback for dynamic terminal color change {{{

function! s:alacritty_set_background()
  let g:alacritty_background = system('alacritty-which-colorscheme')
  if !v:shell_error
    let &background = g:alacritty_background
  else
    echom 'Error calling "alacritty-which-colorscheme"'
  endif
endfunction

call s:alacritty_set_background()
call jobstart(
      \ 'ls ' . $HOME . '/.alacritty.yml | entr -ps "echo alacritty_change"',
      \ {'on_stdout': { j, d, e -> s:alacritty_set_background() }}
      \ )

" }}}
" General: resize window {{{

" WindowWidth: Resize window to a couple more than longest line
" modified function from:
" https://stackoverflow.com/questions/2075276/longest-line-in-vim
function! s:resize_window_width()
  normal! m`
  let maxlength   = 0
  let linenumber  = 1
  while linenumber <= line('$')
    exe ':' . linenumber
    let linelength  = virtcol('$')
    if maxlength < linelength
      let maxlength = linelength
    endif
    let linenumber  = linenumber+1
  endwhile
  exe ':vertical resize ' . (maxlength + 4)
  normal! ``
endfunction

function! s:resize_window_height()
  normal! m`
  let initial = winnr()

  " this duplicates code but avoids polluting global namespace
  wincmd k
  if winnr() != initial
    execute initial . 'wincmd w'
    1
    execute 'resize ' . (line('$') + 1)
    normal! ``
    return
  endif

  wincmd j
  if winnr() != initial
    execute initial . 'wincmd w'
    1
    execute 'resize ' . (line('$') + 1)
    normal! ``
    return
  endif
endfunction

command! ResizeWindowWidth call s:resize_window_width()
command! ResizeWindowHeight call s:resize_window_height()

" }}}
" General: avoid saving 'lcd' {{{

augroup custom_no_save_lcd
  autocmd!
  autocmd User BufStaySavePre
        \ if haslocaldir() |
        \ let w:lcd = getcwd() |
        \ execute 'cd '.fnameescape(getcwd(-1, -1)) |
        \ endif
  autocmd User BufStaySavePost
        \ if exists('w:lcd') |
        \ execute 'lcd' fnameescape(w:lcd) |
        \ unlet w:lcd |
        \ endif
augroup end

" }}}
" General: delete hidden buffers {{{

" From: https://stackoverflow.com/a/7321131

function! s:delete_inactive_buffers()
  "From tabpagebuflist() help, get a list of all buffers in all tabs
  let tablist = []
  for i in range(tabpagenr('$'))
    call extend(tablist, tabpagebuflist(i + 1))
  endfor

  "Below originally inspired by Hara Krishna Dara and Keith Roberts
  "http://tech.groups.yahoo.com/group/vim/message/56425
  let nWipeouts = 0
  for i in range(1, bufnr('$'))
    if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
      " bufno exists AND isn't modified
      " AND isn't in the list of buffers open in windows and tabs
      " Force buffer deletion (even for terminals)
      silent exec 'bwipeout!' i
      let nWipeouts = nWipeouts + 1
    endif
  endfor
  echomsg nWipeouts . ' buffer(s) wiped out'
endfunction

command! DeleteInactiveBuffers call s:delete_inactive_buffers()

" }}}
" General: clean unicode {{{

" Replace unicode symbols with cleaned, ascii versions
function! s:clean_unicode()
  silent! %s/”/"/g
  silent! %s/“/"/g
  silent! %s/’/'/g
  silent! %s/‘/'/g
  silent! %s/—/-/g
  silent! %s/…/.../g
endfunction()
command! CleanUnicode call s:clean_unicode()

" }}}
" General: neovim terminal {{{

function! s:open_term_interactive(view_type)
  execute a:view_type
  terminal
  setlocal nonumber nornu
  startinsert
endfunction

command! Term call s:open_term_interactive('vsplit')
command! VTerm call s:open_term_interactive('vsplit')
command! STerm call s:open_term_interactive('split')
command! Tterm call s:open_term_interactive('tabnew')

" }}}
" General: macro repeater {{{

" Allow '.' to repeat macros. Finally!
" Taken from here:
" https://vi.stackexchange.com/questions/11210/can-i-repeat-a-macro-with-the-dot-operator
" SR took it from GitHub: ckarnell/Antonys-macro-repeater
"
" When . repeats g@, repeat the last macro.
function! AtRepeat(_)
  " If no count is supplied use the one saved in s:atcount.
  " Otherwise save the new count in s:atcount, so it will be
  " applied to repeats.
  let s:atcount = v:count ? v:count : s:atcount
  " feedkeys() rather than :normal allows finishing in Insert
  " mode, should the macro do that. @@ is remapped, so 'opfunc'
  " will be correct, even if the macro changes it.
  call feedkeys(s:atcount.'@@')
endfunction

function! AtSetRepeat(_)
  set operatorfunc=AtRepeat
endfunction

" Called by g@ being invoked directly for the first time. Sets
" 'opfunc' ready for repeats with . by calling AtSetRepeat().
function! AtInit()
  " Make sure setting 'opfunc' happens here, after initial playback
  " of the macro recording, in case 'opfunc' is set there.
  set operatorfunc=AtSetRepeat
  return 'g@l'
endfunction

function! AtReg()
  let s:atcount = v:count1
  let l:c = nr2char(getchar())
  return '@'.l:c."\<plug>@init"
endfunction

function! QRepeat(_)
  call feedkeys('@'.s:qreg)
endfunction

function! QSetRepeat(_)
  set operatorfunc=QRepeat
endfunction

function! QStop()
  set operatorfunc=QSetRepeat
  return 'g@l'
endfunction

let s:qrec = 0
function! QStart()
  if s:qrec == 1
    let s:qrec = 0
    return "q\<plug>qstop"
  endif
  let s:qreg = nr2char(getchar())
  if s:qreg =~# '[0-9a-zA-Z"]'
    let s:qrec = 1
  endif
  return 'q'.s:qreg
endfunction

" }}}
" General: language builder & runner {{{

let s:language_builders = {
      \ 'rust': 'rustc %',
      \ 'go': 'go build %',
      \ }

let s:language_runners = {
      \ 'rust': '%:p:r',
      \ 'go': 'go run %',
      \ 'python': 'python %',
      \ }

function! s:code_term_cmd(str_command)
  silent only
  write
  if &columns >= 160
    vsplit
  else
    belowright split
  endif
  execute 'terminal ' . a:str_command
  nnoremap <buffer> q :bd!<CR>
  cnoremap <buffer> q bd!
  wincmd w
endfunction

" Build source code
function! s:code_build()
  if !has_key(s:language_builders, &filetype)
    echo 'Build not configured for filetype "' . &filetype . '"'
    return
  endif
  call s:code_term_cmd(s:language_builders[&filetype])
endfunction

" Run source code
function! s:code_run()
  let filepath = expand('%:p')
  if executable(filepath) == 1
    call s:code_term_cmd(filepath)
  elseif !has_key(s:language_runners, &filetype)
    echo 'Run not configured for filetype "' . &filetype . '"'
  else
    call s:code_term_cmd(s:language_runners[&filetype])
  endif
endfunction

command! Build call s:code_build()
command! Run call s:code_run()

" }}}
" General: command abbreviations {{{

" Fix highlighting
command! FixHighlight syntax sync fromstart

" }}}
" General: view available colors {{{

" From https://vim.fandom.com/wiki/View_all_colors_available_to_gvim
" There are some sort options at the end you can uncomment to your preference
"
" Create a new scratch buffer:
" - Read file $VIMRUNTIME/rgb.txt
" - Delete lines where color name is not a single word (duplicates).
" - Delete 'grey' lines (duplicate 'gray'; there are a few more 'gray').
" Add syntax so each color name is highlighted in its color.
function! s:vim_colors()
  vnew
  set modifiable
  setlocal filetype=vimcolors buftype=nofile bufhidden=delete noswapfile
  0read $VIMRUNTIME/rgb.txt
  let find_color = '^\s*\(\d\+\s*\)\{3}\zs\w*$'
  silent execute 'v/' . find_color . '/d'
  silent g/grey/d
  let namedcolors = []
  1
  while search(find_color, 'W') > 0
    let word = expand('<cword>')
    call add(namedcolors, word)
  endwhile
  for w in namedcolors
    execute 'highlight col_' . w . ' guifg=black guibg=' . w
    execute 'highlight col_' . w . '_fg guifg=' . w . ' guibg=NONE'
    execute '%s/\<' . w . '\>/' . printf("%-36s%s", w, w . '_fg') . '/g'
    execute 'syntax keyword col_' . w . ' ' . w
    execute 'syntax keyword col_' . w . '_fg ' . w . '_fg'
  endfor
  " Add hex value column (and format columns nicely)
  %s/^\s*\(\d\+\)\s\+\(\d\+\)\s\+\(\d\+\)\s\+/\=printf(" %3d %3d %3d   #%02x%02x%02x   ", submatch(1), submatch(2), submatch(3), submatch(1), submatch(2), submatch(3))/
  1
  nohlsearch
  call s:key_mappings_readonly()
  file VimColors
  set nomodifiable
endfunction

command! VimColors silent call s:vim_colors()

" }}}
" General: toggle numbers {{{

function! s:toggle_number()
  if &number == 0
    set number
  else
    set nonumber
  endif
endfunction

function! s:toggle_relative_number()
  if &relativenumber == 0
    set relativenumber
  else
    set norelativenumber
  endif
endfunction

command! ToggleNumber call s:toggle_number()
command! ToggleRelativeNumber call s:toggle_relative_number()

" }}}
" General: skeleton templates {{{

" https://vi.stackexchange.com/a/3833
function! s:randnum(max) abort
  return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:]) % a:max
endfunction

" Create temporary file from skeleton
function! s:skeleton(file_skeleton)
  let parts = split(a:file_skeleton, '\.')
  let fn = join([parts[0] . '-' . s:randnum(10000)] + parts[1:], '.')
  execute 'edit ' . fn
  execute 'read ' $HOME . '/.config/nvim/skeletons/' . a:file_skeleton
  0delete_
  /{{Cursor}}
  normal! n
  normal! da{
  startinsert!
endfunction

command! Clubhouse silent call s:skeleton('clubhouse.md')
command! Standup silent call s:skeleton('standup.md')
command! Mentor silent call s:skeleton('mentor.md')

" }}}
" Package: git plugins: gv.vim, fugitive, git-messenger {{{

" NOTES:
" :GV to open commit browser
"     You can pass git log options to the command, e.g. :GV -S foobar.
" :GV! will only list commits that affected the current file
" :GV? fills the location list with the revisions of the current file

" :GV or :GV? can be used in visual mode to track the changes in the selected lines.
" Mappings

" o or <cr> on a commit to display the content of it
" o or <cr> on commits to display the diff in the range
" O opens a new tab instead
" gb for :Gbrowse
" ]] and [[ to move between commits
" . to start command-line with :Git [CURSOR] SHA à la fugitive
" q or gq to close

let g:git_messenger_always_into_popup = v:false
let g:git_messenger_no_default_mappings = v:true

" }}}
" Package: jinja2 {{{

function! s:jinja2_toggle()
  let jinja2 = '.jinja2'
  let jinja2_pattern = '\' . jinja2
  if matchstr(&ft, jinja2_pattern) == ""
    let new_filetype = &ft . jinja2
  else
    let new_filetype = substitute(&ft, jinja2_pattern, "", "")
  endif
  execute "set filetype=" . new_filetype
endfunction

command! Jinja2Toggle call s:jinja2_toggle()

" }}}
" Package: man pager {{{

let g:man_hardwrap = v:true

augroup custom_man_page
  autocmd!
  autocmd FileType man setlocal number
augroup end

" }}}
" Package: restructured text {{{

" Vim Rst Sections: documentation
" -----------------------------------------------------------------------
" Shortcuts:
" press your *leader* key followed by *s* and then:
"   * a number from 0 to 6 to set the section level (RstSetSection(level))
"   * k or j to jump to the previuos or next section
"   * a or x to increase or decrease the section level
"   * l to labelize

" Conventional Markup Hierarchy:
"   1. # with overline, for parts
"   2. * with overline, for chapters
"   3. =, for sections
"   4. -, for subsections
"   5. ^, for subsubsections
"   6. ", for paragraphs

" Source: https://stackoverflow.com/a/30772902
function! s:line_match_count(pat,...)
  " searches for pattern matches in the active buffer, with optional start and
  " end line number specifications

  " useful command-line for testing against last-used pattern within last-used
  " visual selection: echo s:line_match_count(@/,getpos("'<")[1],getpos("'>")[1])

  if (a:0 > 2) | echoerr 'too many arguments for function: s:line_match_count()'
        \ | return| endif
  let start = a:0 >= 1 ? a:000[0] : 1
  let end = a:0 >= 2 ? a:000[1] : line('$')
  "" validate args
  if (type(start) != type(0))
        \ | echoerr 'invalid type of argument: start' | return | endif
  if (type(end) != type(0))
        \ | echoerr 'invalid type of argument: end' | return | endif
  if (end < start)| echoerr 'invalid arguments: end < start'| return | endif
  "" save current cursor position
  let wsv = winsaveview()
  "" set cursor position to start (defaults to start-of-buffer)
  call setpos('.',[0,start,1,0])
  "" accumulate line count in local var
  let lineCount = 0
  "" keep searching until we hit end-of-buffer
  let ret = search(a:pat,'cW')
  while (ret != 0)
    " break if the latest match was past end; must do this prior to
    " incrementing lineCount for it, because if the match start is past end,
    " it's not a valid match for the caller
    if (ret > end)
      break
    endif
    let lineCount += 1
    " always move the cursor to the start of the line following the latest
    " match; also, break if we're already at end; otherwise next search would
    " be unnecessary, and could get stuck in an infinite loop if end ==
    " line('$')
    if (ret == end)
      break
    endif
    call setpos('.',[0,ret+1,1,0])
    let ret = search(a:pat,'cW')
  endwhile
  "" restore original cursor position
  call winrestview(wsv)
  "" return result
  return lineCount
endfunction

command! HovercraftSlide echo 'Slide '
      \ . s:line_match_count('^----$', 1, line('.'))

let g:no_rst_sections_maps = 0

" }}}
" Package: markdown-preview.vim {{{

let g:mkdp_auto_start = v:false
let g:mkdp_auto_close = v:false

" set to 1, the vim will just refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = v:false

" set to 1, the MarkdownPreview command can be use for all files,
" by default it just can be use in markdown file
" default: 0
let g:mkdp_command_for_global = v:false

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle'
      \ }

" }}}
" Package: preview compiled stuff in viewer {{{

function! s:preview()
  if &filetype ==? 'rst'
    exec 'terminal restview %'
    exec "normal \<C-O>"
  elseif &filetype ==? 'markdown'
    " from markdown-preview.vim
    exec 'MarkdownPreview'
  elseif &filetype ==? 'dot'
    " from wmgraphviz.vim
    exec 'GraphvizInteractive'
  elseif &filetype ==? 'plantuml'
    " from plantuml-previewer.vim
    exec 'PlantumlOpen'
  else
    echo 'Preview not supported for this filetype'
  endif
endfunction

command! Preview call s:preview()

" }}}
" Package: defx {{{

let g:custom_defx_state = tempname()

let g:defx_ignored_files = join([
      \ '*.aux',
      \ '*.egg-info/',
      \ '*.o',
      \ '*.out',
      \ '*.pdf',
      \ '*.png',
      \ '*.pyc',
      \ '*.toc',
      \ '.*',
      \ '__pycache__/',
      \ 'build/',
      \ 'dist/',
      \ 'docs/_build/',
      \ 'fonts/',
      \ 'node_modules/',
      \ 'pip-wheel-metadata/',
      \ 'plantuml-images/',
      \ 'site/',
      \ 'target/',
      \ 'venv.bak/',
      \ 'venv/',
      \ ], ',')

let g:custom_defx_mappings = [
      \ ['!             ', "defx#do_action('execute_command')"],
      \ ['*             ', "defx#do_action('toggle_select_all')"],
      \ [';             ', "defx#do_action('repeat')"],
      \ ['<2-LeftMouse> ', "defx#is_directory() ? defx#do_action('open_or_close_tree') : defx#do_action('drop')"],
      \ ['<C-g>         ', "defx#do_action('print')"],
      \ ['<C-h>         ', "defx#do_action('resize', 31)"],
      \ ['<C-i>         ', "defx#do_action('open_directory')"],
      \ ['<C-o>         ', "defx#do_action('cd', ['..'])"],
      \ ['<C-r>         ', "defx#do_action('redraw')"],
      \ ['<C-t>         ', "defx#do_action('open', 'tabe')"],
      \ ['<C-v>         ', "defx#do_action('open', 'vsplit')"],
      \ ['<C-x>         ', "defx#do_action('open', 'split')"],
      \ ['<CR>          ', "defx#do_action('drop')"],
      \ ['<RightMouse>  ', "defx#do_action('cd', ['..'])"],
      \ ['O             ', "defx#do_action('open_tree_recursive', 3)"],
      \ ['P             ', "defx#do_action('open', 'pedit')"],
      \ ['a             ', "defx#do_action('toggle_select')"],
      \ ['cc            ', "defx#do_action('copy')"],
      \ ['cd            ', "defx#do_action('change_vim_cwd')"],
      \ ['i             ', "defx#do_action('toggle_ignored_files')"],
      \ ['ma            ', "defx#do_action('new_file')"],
      \ ['md            ', "defx#do_action('remove')"],
      \ ['mm            ', "defx#do_action('rename')"],
      \ ['o             ', "defx#is_directory() ? defx#do_action('open_or_close_tree') : defx#do_action('drop')"],
      \ ['p             ', "defx#do_action('paste')"],
      \ ['q             ', "defx#do_action('quit')"],
      \ ['ss            ', "defx#do_action('multi', [['toggle_sort', 'TIME'], 'redraw'])"],
      \ ['t             ', "defx#do_action('open_or_close_tree')"],
      \ ['u             ', "defx#do_action('cd', ['..'])"],
      \ ['x             ', "defx#do_action('execute_system')"],
      \ ['yy            ', "defx#do_action('yank_path')"],
      \ ['~             ', "defx#do_action('cd')"],
      \ ]

function! s:open_defx_if_directory()
  if !exists('g:loaded_defx')
    echom 'Defx not installed, skipping...'
    return
  endif
  if isdirectory(expand(expand('%:p')))
    Defx `expand('%:p')`
        \ -buffer-name=defx
        \ -columns=mark:git:indent:icons:filename:type:size:time
  endif
endfunction

function! s:defx_redraw()
  if !exists('g:loaded_defx')
    return
  endif
  call defx#redraw()
endfunction

function! s:defx_buffer_remappings() abort
  " Define mappings
  for [key, value] in g:custom_defx_mappings
    execute 'nnoremap <silent><buffer><expr> ' . key . ' ' . value
  endfor
  nnoremap <silent><buffer> ?
        \ :for [key, value] in g:custom_defx_mappings <BAR>
        \ echo '' . key . ': ' . value <BAR>
        \ endfor<CR>
endfunction

augroup custom_defx
  autocmd!
  autocmd BufEnter * call s:open_defx_if_directory()
  autocmd FileType defx setlocal cursorline
  autocmd BufLeave,BufWinLeave \[defx\]* silent call defx#call_action('add_session')
augroup end

" }}}
" Package: fzf and fzf preview {{{

" When in preview window, the following key mappings are relevant:
" <C-s>
"   - Toggle window size of fzf, normal size and full-screen
" <C-d>
"   - Preview page down
" <C-u>
"   - Preview page up
" <C-t> or ?
"   - Toggle Preview
" <C-x>, <C-v>, <C-t>: open in split, vert, and tab

function! s:fzf_files_avoid_defx()
  if (expand('%') =~# 'defx' && winnr('$') > 1)
    execute "normal! \<c-w>\<c-w>"
  endif
  " ignore below comment: keeping for now in case I need it again soon:
  " getcwd(-1, -1) tells it to always use the global working directory
  " 'dir': getcwd(-1, -1),
  call fzf#run(fzf#wrap({
        \ 'source': 'fd --type f --hidden --follow --exclude ".git"',
        \ 'options': g:fzf_custom_file_options,
        \ }))
endfunction

function! s:fzf_buffers_avoid_defx()
  if (expand('%') =~# 'defx' && winnr('$') > 1)
    execute "normal! \<c-w>\<c-w>"
  endif
  Buffers
endfunction

let g:fzf_preview_command = 'bat --style=numbers --color=always {}'
let g:fzf_preview_default_key_bindings =
      \ 'ctrl-e:preview-page-down,ctrl-y:preview-page-up,?:toggle-preview'
let g:fzf_custom_file_options = '-m --bind '
      \ . g:fzf_preview_default_key_bindings . ' '
      \ . '--reverse '
      \ . '--prompt="Files> " '
      \ . "--preview '"
      \ . '[[ $(file --mime {}) =~ binary ]] &&'
      \ . 'echo {} is a binary file || '
      \ . g:fzf_preview_command . ' '
      \ . "2> /dev/null | head -500'"
let $FZF_DEFAULT_OPTS = '-m --bind '
      \ . g:fzf_preview_default_key_bindings . ' '
      \ . '--reverse '
      \ . '--prompt="> " '
let g:fzf_layout = { 'window': 'botright 20new' }
let g:fzf_action = {
      \ 'ctrl-o': 'edit',
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit',
      \ }

command! -bang -nargs=* Rg
      \ call fzf#vim#grep('rg --column --no-heading --line-number --color=always '.shellescape(<q-args>),
      \ 1,
      \ fzf#vim#with_preview(),
      \ <bang>0)

" }}}
" Package: tagbar {{{

let g:tagbar_map_showproto = '`'
let g:tagbar_show_linenumbers = -1
let g:tagbar_autofocus = v:true
let g:tagbar_indent = 1
let g:tagbar_sort = v:false  " order by order in sort file
let g:tagbar_case_insensitive = v:true
let g:tagbar_width = 37
let g:tagbar_silent = v:true
let g:tagbar_foldlevel = 0
let g:tagbar_type_haskell = {
    \ 'ctagsbin': 'hasktags',
    \ 'ctagsargs': '-x -c -o-',
    \ 'kinds': [
        \ 'm:modules:0:1',
        \ 'd:data: 0:1',
        \ 'd_gadt: data gadt:0:1',
        \ 't:type names:0:1',
        \ 'nt:new types:0:1',
        \ 'c:classes:0:1',
        \ 'cons:constructors:1:1',
        \ 'c_gadt:constructor gadt:1:1',
        \ 'c_a:constructor accessors:1:1',
        \ 'ft:function types:1:1',
        \ 'fi:function implementations:0:1',
        \ 'o:others:0:1',
    \ ],
    \ 'sro': '.',
    \ 'kind2scope': {
        \ 'm': 'module',
        \ 'c': 'class',
        \ 'd': 'data',
        \ 't': 'type',
    \ },
    \ 'scope2kind': {
        \ 'module': 'm',
        \ 'class': 'c',
        \ 'data': 'd',
        \ 'type': 't',
    \ },
\ }
let g:tagbar_type_rst = {
      \ 'ctagstype': 'rst',
      \ 'ctagsbin' : '~/src/lib/rst2ctags/rst2ctags.py',
      \ 'ctagsargs' : '-f - --sort=yes',
      \ 'kinds' : [
        \ 's:sections',
        \ 'i:images',
      \ ],
      \ 'sro' : '|',
      \ 'kind2scope' : {
        \ 's' : 'section',
      \ },
      \ 'sort': 0,
      \ }
let g:tagbar_type_typescript = {
      \ 'ctagsbin' : 'tstags',
      \ 'ctagsargs' : '-f-',
      \ 'kinds': [
        \ 'e:enums:0:1',
        \ 'f:function:0:1',
        \ 't:typealias:0:1',
        \ 'M:Module:0:1',
        \ 'I:import:0:1',
        \ 'i:interface:0:1',
        \ 'C:class:0:1',
        \ 'm:method:0:1',
        \ 'p:property:0:1',
        \ 'v:variable:0:1',
        \ 'c:const:0:1',
      \ ],
      \ 'sort' : 0
      \ }

" }}}
" Package: vim-tex {{{

let g:vimtex_compiler_latexmk = {'callback' : v:false}
let g:tex_flavor = 'latex'
let g:vimtex_imaps_enabled = v:false
let g:vimtex_doc_handlers = ['MyVimTexDocHandler']

function! MyVimTexDocHandler(context)
  " Function called with using :VimtexDocPackage
  " to pull up package documentation
  call vimtex#doc#make_selection(a:context)
  if !empty(a:context.selected)
    execute '!texdoc ' . a:context.selected . ' &'
  endif
  return 1
endfunction

" }}}
" Package: sandwich {{{

" LatexNotes:
"   textobject:
"     replace inner text of `text' with cisl'
"     if auto detection of nearest surrounding is fine cib
"   add to text:
"     saiwl' single apostrophes to get `text'
"     The pattern of the command is sa{motion/textobject}{surrounding}
"     means invoke operator add  surrounding on inner word and surround type
"     is latex single quote.
"   delete:
"     with sdl' or with sdb
"   change:
"     with srl'l" or with srbl"

" Keymappings set in keymappings section
let g:textobj_sandwich_no_default_key_mappings = v:true

" }}}
" Package: goyo {{{

let g:goyo_height = '100%'
let g:goyo_width = 84
let g:goyo_linenr = 1

function! s:goyo_enter()
  " Repeat whitespace match
  match EOLWS /\s\+$/

  " Disable key mappings
  nunmap <silent> <space>j
  nunmap <silent> <space>l
  nunmap <silent> <space>u

  " Width: 1, 2, or 3 files wide
  nnoremap <silent> gww :Goyo 84<CR>
  nnoremap <silent> gw1 :Goyo 84<CR>
  nnoremap <silent> gw2 :Goyo 168<CR>
  nnoremap <silent> gw3 :Goyo 252<CR>
endfunction

function! s:goyo_leave()
  nunmap <silent> gww
  nunmap <silent> gw1
  nunmap <silent> gw2
  nunmap <silent> gw3
  call s:default_key_mappings()
  if &filetype == 'markdown'
    " Preserve code highlighting
    doautocmd Mkd BufWinEnter
  endif
  syntax off
  syntax on
  windo call s:defx_redraw()
endfunction

augroup custom_goyo
  autocmd!
  autocmd! User GoyoEnter nested call s:goyo_enter()
  autocmd! User GoyoLeave nested call s:goyo_leave()
augroup end

" }}}
" Package: ragtag {{{

" Load mappings on every filetype
let g:ragtag_global_maps = v:true

" Additional files for whice ragtag will initialize
augroup custom_ragtag
  autocmd FileType svelte,javascript call RagtagInit()
augroup end

" }}}
" Package: nvim-repl {{{

let g:repl_filetype_commands = {
      \ 'bash': 'bash',
      \ 'javascript': 'node',
      \ 'python': 'bpython -q',
      \ 'sh': 'sh',
      \ 'vim': 'nvim --clean -ERZM',
      \ 'zsh': 'zsh',
      \ }

let g:repl_default = &shell

" }}}
" Package: vim-markdown {{{

let g:vim_markdown_frontmatter = v:true
let g:vim_markdown_toml_frontmatter = v:true
let g:vim_markdown_json_frontmatter = v:true
let g:vim_markdown_no_default_key_mappings = v:true
let g:vim_markdown_strikethrough = v:true
let g:vim_markdown_folding_disabled = v:true
let g:vim_markdown_auto_insert_bullets = v:false
let g:vim_markdown_new_list_item_indent = v:false

" }}}
" Package: vim-filetype-formatter {{{

let g:vim_filetype_formatter_verbose = v:false
let g:vim_filetype_formatter_ft_no_defaults = []
let g:vim_filetype_formatter_commands = {
      \ 'python': 'black -q - | isort -',
      \ }

" }}}
" Package: keywordprg helpers (vim-keywordprg-commands, etc) {{{

let g:vim_keywordprg_commands = {
      \ }
" NOTE: latex is handled by vimtex

augroup custom_keywordprg
  autocmd FileType markdown,rst,tex,txt setlocal keywordprg=:DefEng
  autocmd FileType python setlocal keywordprg=:Pydoc
  autocmd FileType typescript,typescript.tsx setlocal keywordprg=:DD\ javascript
augroup end

" }}}
" Package: misc global var config {{{

" Python: disable python 2 support
let g:loaded_python_provider = v:true

" TypeScript:
let g:typescript_indent_disable = v:false
let g:vim_jsx_pretty_disable_tsx = v:true

" Netrw: disable completely
let g:loaded_netrw= v:true
let g:netrw_loaded_netrwPlugin= v:true
let g:netrw_nogx = v:true

" UndoTree:
let g:undotree_SetFocusWhenToggle = v:true
let g:undotree_WindowLayout = 3

" QFEnter:
let g:qfenter_keymap = {}
let g:qfenter_keymap.open = ['<CR>']
let g:qfenter_keymap.vopen = ['<C-v>']
let g:qfenter_keymap.hopen = ['<C-x>']
let g:qfenter_keymap.topen = ['<C-t>']
" do not copy quickfix when opened in new tab
let g:qfenter_enable_autoquickfix = v:false
" automatically move QuickFix window to fill entire bottom screen
augroup custom_quickfix
  autocmd FileType qf wincmd J
augroup end

" WinResize:
let g:winresizer_start_key = '<C-\>'
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

" Haskell: 'neovimhaskell/haskell-vim'
let g:haskell_enable_quantification = v:true   " to highlight `forall`
let g:haskell_enable_recursivedo = v:true      " to highlight `mdo` and `rec`
let g:haskell_enable_arrowsyntax = v:true      " to highlight `proc`
let g:haskell_enable_pattern_synonyms = v:true " to highlight `pattern`
let g:haskell_enable_typeroles = v:true        " to highlight type roles
let g:haskell_enable_static_pointers = v:true  " to highlight `static`

" Python: highlighting
let g:python_highlight_space_errors = v:false
let g:python_highlight_all = v:true

" Json: highlighting
let g:vim_json_syntax_conceal = v:false

" Ferret:
" disable default mappings
let g:FerretMap = v:false

" VimJavascript:
let g:javascript_plugin_flow = v:false

" IndentLines:
let g:indentLine_enabled = v:false  " indentlines disabled by default

" BulletsVim:
let g:bullets_enabled_file_types = [
      \ 'markdown',
      \ 'text',
      \ 'gitcommit',
      \ 'scratch',
      \ 'rst',
      \ ]
let g:bullets_outline_levels = ['num', 'std-']

" RequirementsVim: filetype detection (begin with requirements)
let g:requirements#detect_filename_pattern = 'requirements.*\.txt'

" QuickScope: great plugin helping with f and t
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars = 10000

" Go: random stuff
let g:go_version_warning = v:false

" ChooseWin: options
let g:choosewin_overlay_enable = v:false

" HexMode: configure hex editing
" relevant command: Hexmode
let g:hexmode_patterns = '*.bin,*.exe,*.dat,*.o'
let g:hexmode_xxd_options = '-g 2'

" Syntax Omni Completion:
let g:omni_syntax_use_single_byte = v:false
let g:omni_syntax_use_iskeyword_numeric = v:false

" }}}
" Tidbits: helpful hints {{{

" This is my Neovim configuration file. Hopefully you enjoy using it as much
" as me! I use Linux Mint / Ubuntu 18.04, but this will probably work with
" most Linux-based OS's.
"
" Installation:
"   1. Put file in correct place within filesystem
"     Soft-link this file to ~/.config/nvim/init.vim
"   2. Install Vim-Packager (a great plugin manager)
"   3. Open nvim (hint: type nvim at command line and press enter :p)
"   4.     :PackInstall
"   5.     :PackUpdate
"   6.     :PackUpgrade

" TextObjectSelection:
" object-select OR text-objects
" delete the inner (...) block where the cursor is.
" dib ( or 'di(' )
" -----------------------------------------------------------
"  Folding:
"  zi: toggles everything
"  za: toggles the current section
" -----------------------------------------------------------
" ParenInsertion:
" There are 3 ways
" 1. use Ctrl-V ) to insert paren without trigger the plugin.
" 2. use Alt-P to turn off the plugin.
" 3. use DEL or <C-O>x to delete the character insert by plugin.
"
" QuickfixAndLocationList:
" ccl: close quickfix (my abbreviation: cc)
" cw: open quickfix if there is anything to open
" lcl: close location list (my abbreviation: lc)
" lw: open location list if there is anything to open
"
" InsertModeEditing:
" TLDR
"   :help insert-index
" CTRL-H   delete the character in front of the cursor
" CTRL-W   delete the word in front of the cursor
" CTRL-U   delete all characters in front of the cursor
" CTRL-L   delete character under cursor (I create this in general remappings)
"
" CommandMode:
" q: -> open the command editing window
"
" ExMode:
" Q -> opens ex mode
" To lean more about the ex editor, type 'man ex'

" }}}
" Samuel Roeca's '~/.config/nvim/init.vim'. Toggle folds with 'za'.

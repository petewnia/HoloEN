"------------------------------------------------------------
" Name: holokai.vim
" Description: Hololive EN/monkai colorscheme for vim.
" Maintainer: tew
"------------------------------------------------------------

highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name = 'holokai'

function! s:set() abort
  let none           = {'gui': 'NONE',      'cterm': 'NONE'}
  let bold           = {'gui': 'bold',      'cterm': 'bold'}
  let italic         = {'gui': 'italic',    'cterm': 'italic'}
  let underline      = {'gui': 'underline', 'cterm': 'underline'}
  let undercurl      = {'gui': 'undercurl', 'cterm': 'underline'}
  let boldunderline  = {'gui': 'bold,underline', 'cterm': 'bold,underline'}

  let highlight_group = {}
  if &background ==# 'light'
    " light theme

    " Palette
	let text        = {'gui': '#96cde8', 'cterm': '6'}
	let bg          = {'gui': '#212223', 'cterm': '6'}
	let oldbg       = {'gui': '#262727', 'cterm': '6'}
	let gray        = {'gui': '#303030', 'cterm': '6'}
	let garay       = {'gui': '#3D3D3D', 'cterm': '6'}
    let gray1       = {'gui': '#4a4a4a', 'cterm': '238'}
    let gray2       = {'gui': '#7c7c7c', 'cterm': '242'}
    let gray3       = {'gui': '#b9b9b9', 'cterm': '250'}
    let gray4       = {'gui': '#e3e3e3', 'cterm': '254'}
    let gray5       = {'gui': '#f1f1f1', 'cterm': '255'}
    let gray6       = {'gui': '#f9f9f9', 'cterm': '231'}
    let gray7       = {'gui': '#F9F9F6', 'cterm': '231'}
	let gray8       = {'gui': '#F9F9F4', 'cterm': '6'}
    let white       = {'gui': '#ffffff', 'cterm': '15'}
	let mori        = {'gui': '#c90d40', 'cterm': '6'}
	let lightmori   = {'gui': '#ffa6c4', 'cterm': '6'}
	let bird        = {'gui': '#ff511c', 'cterm': '6'}
	let lightbird   = {'gui': '#ffca60', 'cterm': '6'}
    let green       = {'gui': '#2c9874', 'cterm': '28'}
    let cyan        = {'gui': '#50b2bd', 'cterm': '73'}
    let gawr        = {'gui': '#5c81c7', 'cterm': '25'}
    let lightgawr   = {'gui': '#91bfe3', 'cterm': '6'}
    let ninomae     = {'gui': '#62567e', 'cterm': '98'}
	let lightninomae= {'gui': '#948ca3', 'cterm': '6'}
    let pink        = {'gui': '#f8779e', 'cterm': '169'}
    let brown       = {'gui': '#9b6e5b', 'cterm': '95'}
    let watson      = {'gui': '#f7db92', 'cterm': '6'}
	let lightwatson = {'gui': '#fef2dc', 'cterm': '229'}
    let lightgreen  = {'gui': '#c3f8c0', 'cterm': '193'}
    let lightcyan   = {'gui': '#c9e7e9', 'cterm': '195'}
    let lightblue   = {'gui': '#bad7e9', 'cterm': '153'}
    let lightpurple = {'gui': '#f3c7fa', 'cterm': '189'}
    let lightpink   = {'gui': '#febed6', 'cterm': '225'}
    let lightbrown  = {'gui': '#dfbbad', 'cterm': '254'}
    let paleyellow  = {'gui': '#fff9c0', 'cterm': '226'}
    let palecyan    = {'gui': '#a4cbd0', 'cterm': '152'}
    let palebrown   = {'gui': '#bba1a0', 'cterm': '188'}
    let clearred    = {'gui': '#ec564f', 'cterm': '6'}
    let clearblue   = {'gui': '#4488f2', 'cterm': '6'}
    let clearred    = {'gui': '#c54c51', 'cterm': '6'}
    let clearblue   = {'gui': '#34739e', 'cterm': '6'}
    let darkyellow  = {'gui': '#ee9b59', 'cterm': '142'}
    let cursorblue  = {'gui': '#8da5e1', 'cterm': '75'}
    let cursorpink  = {'gui': '#fe6d8a', 'cterm': '171'}

    "*** highlight groups (:h highlight-groups) ***"
    " fundamental
    let highlight_group.Normal       = [gray7,       bg,          none,      none]
    let highlight_group.Visual       = [none,        gray,       none,      none]
    let highlight_group.VisualNOS    = [none,        garay,       none,      none]
    " Cursor
    let highlight_group.Cursor       = [gray1,       gray8,       none,      none]
    let highlight_group.CursorIM     = [white,       text,        none,      none]
    let highlight_group.CursorLine   = [none,        none,        none,      none]
    let highlight_group.CursorColumn = [none,        bg,          none,      none]
    " Statusline
    let highlight_group.StatusLine   = [text,        gray,        none,      none]
    let highlight_group.StatusLineNC = [gray8,       gray,        none,      none]
    let highlight_group.WildMenu     = [gray7,       bg,          none,      none]
    let highlight_group.StatusLineTerm = highlight_group.StatusLine
    let highlight_group.StatusLineTermNC = highlight_group.StatusLineNC
    " Sidebar
    let highlight_group.LineNr       = [gray1, oldbg,       none,      none]
    let highlight_group.CursorLineNr = [gray2,       none,        none,      none]
    let highlight_group.FoldColumn   = [gray3,       gray4,       none,      none]
    let highlight_group.SignColumn   = [lightmori,   gray4,       none,      none]
    let highlight_group.VertSplit    = highlight_group.StatusLineNC
    let highlight_group.ColorColumn  = [none,        garay,   none,      none]
    " Fold
    let highlight_group.Folded       = [garay,       gray2,       none,      none]
    " Tabline
    let highlight_group.TabLineSel   = highlight_group.WildMenu
    let highlight_group.TabLine      = highlight_group.StatusLine
    let highlight_group.TabLineFill  = highlight_group.StatusLine
    " Search
    let highlight_group.Search       = [none,        lightgawr,   none,      none]
    let highlight_group.IncSearch    = [none,        lightwatson, none,      none]
    " Message
    let highlight_group.ErrorMsg     = [clearred,    none,        none,      none]
    let highlight_group.ModeMsg      = [darkyellow,  none,        bold,      none]
    let highlight_group.MoreMsg      = [darkyellow,  none,        bold,      none]
    let highlight_group.Question     = [ninomae,     none,        bold,      none]
    let highlight_group.Title        = [darkyellow,  none,        none,      none]
    let highlight_group.WarningMsg   = [cursorpink,  none,        none,      none]
    " Completion
    let highlight_group.Pmenu        = [garay,       lightgawr,   none,      none]
    let highlight_group.PmenuSel     = [garay,       cursorblue,  none,      none]
    let highlight_group.PmenuSbar    = [garay,       lightgawr,   none,      none]
    let highlight_group.PmenuThumb   = [garay,       garay,       none,      none]
    " Diff
    let highlight_group.DiffAdd      = [none,        lightgreen,  none,      none]
    let highlight_group.DiffChange   = [none,        lightwatson, none,      none]
    let highlight_group.DiffDelete   = [none,        lightpink,   none,      none]
    let highlight_group.DiffText     = [none,        paleyellow,  underline, none]
    " Miscellaneous
    let highlight_group.Directory    = [gawr,        none,        none,      none]
    let highlight_group.NonText      = [palebrown,   none,        none,      none]
    let highlight_group.SpecialKey   = [palecyan,    none,        none,      none]
    let highlight_group.Conceal      = [palecyan,    lightcyan,   none,      none]

    "*** Syntax groups (:h group-name) ***"
    let highlight_group.Comment      = [gray2,       none,        italic,    none]
    let highlight_group.Constant     = [ninomae,     none,        none,      none]
    let highlight_group.Identifier   = [bird,        none,        none,      none]
    let highlight_group.Statement    = [mori,        none,        none,      none]
    let highlight_group.PreProc      = [green,       none,        none,      none]
    let highlight_group.Type         = [gawr,        none,        none,      none]
    let highlight_group.Special      = [watson,      none,        none,      none]
    let highlight_group.Underlined   = [clearblue,   none,        underline, none]
    let highlight_group.Ignore       = [palebrown,   none,        none,      none]
    let highlight_group.Error        = [mori,        none,        undercurl, clearred]
    let highlight_group.Todo         = [darkyellow,  none,        none,      none]

    "*** Settings for plugin ***"
    let highlight_group.MatchParen = [none, lightwatson, boldunderline, none]
    let highlight_group.HighlightedyankRegion = highlight_group.IncSearch
    let highlight_group.SwapCurrentItem  = [clearblue, lightwatson, underline, none]
    let highlight_group.SwapSelectedItem = [clearblue, lightpink,   underline, none]
    let highlight_group.SwapItem         = [clearblue, none,        underline, none]
    let highlight_group.OperatorSandwichChange = [none, lightwatson, none,   none]
    let highlight_group.OperatorSandwichDelete = [none, lightpink,   none,   none]
    let highlight_group.OperatorSandwichAdd    = [none, lightgreen,  none,   none]
    let highlight_group.uniteStatusHead             = [brown, lightbrown, none,   none]
    let highlight_group.uniteStatusSourceNames      = [gawr,  lightbrown, none,   none]
    let highlight_group.uniteStatusSourceCandidates = [green, lightbrown, none,   none]
    let highlight_group.uniteStatusMessage          = [gray2, lightbrown, italic, none]
    let highlight_group.uniteStatusLineNR           = [brown, lightbrown, none,   none]

    let bg_none    = {'gui': bg.gui, 'cterm': 'NONE'}
  else
    " dark theme

    " Palette
    let gray1       = {'gui': '#222222', 'cterm': '234'}
    let gray2       = {'gui': '#303030', 'cterm': '235'}
    let gray3       = {'gui': '#3e3e3e', 'cterm': '237'}
    let gray4       = {'gui': '#484848', 'cterm': '241'}
    let gray5       = {'gui': '#898989', 'cterm': '245'}
    let gray6       = {'gui': '#c1c1b3', 'cterm': '249'}
    let white       = {'gui': '#ffffff', 'cterm': '15'}
    let green       = {'gui': '#88a537', 'cterm': '106'}
    let cyan        = {'gui': '#76aaa4', 'cterm': '73'}
    let blue        = {'gui': '#5491c0', 'cterm': '32'}
    let purple      = {'gui': '#8b7bb5', 'cterm': '104'}
    let pink        = {'gui': '#b0507c', 'cterm': '133'}
    let brown       = {'gui': '#ad826b', 'cterm': '95'}
    let darkcyan    = {'gui': '#4d6b67', 'cterm': '24'}
    let darkblue    = {'gui': '#405260', 'cterm': '19'}
    let darkpurple  = {'gui': '#574c74', 'cterm': '61'}
    let cursorblue  = {'gui': '#69c4ff', 'cterm': '75'}
    let cursorpink  = {'gui': '#db81aa', 'cterm': '171'}
    let lightyellow = {'gui': '#c0c040', 'cterm': '3'}
    let lightgreen  = {'gui': '#3dab53', 'cterm': '2'}
    let lightred    = {'gui': '#ff3333', 'cterm': '1'}
    let lightcyan   = {'gui': '#00eeff', 'cterm': '73'}
    let lightpink   = {'gui': '#b04656', 'cterm': '125'}
    let paleyellow  = {'gui': '#d9d1af', 'cterm': '187'}
    let palegreen   = {'gui': '#7aae2e', 'cterm': '71'}
    let paleblue    = {'gui': '#4987d3', 'cterm': '75'}
    let palepink    = {'gui': '#4987d3', 'cterm': '75'}
    let palered     = {'gui': '#cb5151', 'cterm': '167'}
    let PMlightblue = {'gui': '#a8b9c6', 'cterm': '153'}
    let PMblue      = {'gui': '#586976', 'cterm': '67'}

    "*** highlight groups (:h highlight-groups) ***"
    " fundamental
    let highlight_group.Normal       = [gray6,       gray2,       none,      none]
    let highlight_group.Visual       = [none,        darkblue,    none,      none]
    let highlight_group.VisualNOS    = [none,        darkcyan,    none,      none]
    " Cursor
    let highlight_group.Cursor       = [gray2,       cursorblue,  none,      none]
    let highlight_group.CursorIM     = [gray6,       cursorpink,  none,      none]
    let highlight_group.CursorLine   = [none,        none,        none,      none]
    let highlight_group.CursorColumn = [none,        gray3,       none,      none]
" Statusline
    let highlight_group.StatusLine   = [gray6,       gray1,       none,      none]
    let highlight_group.StatusLineNC = [gray4,       gray1,       none,      none]
    let highlight_group.WildMenu     = [gray2,       paleyellow,  none,      none]
    let highlight_group.StatusLineTerm = highlight_group.StatusLine
    let highlight_group.StatusLineTermNC = highlight_group.StatusLineNC
    " Sidebar
    let highlight_group.LineNr       = [gray5,       gray3,       none,      none]
    let highlight_group.CursorLineNr = [gray6,       none,        none,      none]
    let highlight_group.FoldColumn   = [gray5,       gray3,       none,      none]
    let highlight_group.SignColumn   = [green,       gray3,       none,      none]
    let highlight_group.VertSplit    = highlight_group.StatusLineNC
    let highlight_group.ColorColumn  = [none,        darkcyan,    none,      none]
    " Fold
    let highlight_group.Folded       = [gray5,       gray3,       none,      none]
    " Tabline
    let highlight_group.TabLineSel   = highlight_group.WildMenu
    let highlight_group.TabLine      = highlight_group.StatusLine
    let highlight_group.TabLineFill  = highlight_group.StatusLine
    " Search
    let highlight_group.Search       = [white,       darkpurple,  none,      none]
    let highlight_group.IncSearch    = [none,        gray4,       none,      none]
    " Message
    let highlight_group.ErrorMsg     = [lightred,    none,        none,      none]
    let highlight_group.ModeMsg      = [brown,       none,        bold,      none]
    let highlight_group.MoreMsg      = [green,       none,        bold,      none]
    let highlight_group.Question     = [purple,      none,        bold,      none]
    let highlight_group.Title        = [green,       none,        none,      none]
    let highlight_group.WarningMsg   = [lightyellow, none,        none,      none]
    " Completion
    let highlight_group.Pmenu        = [gray6,       PMblue,      none,      none]
    let highlight_group.PmenuSel     = [gray2,       PMlightblue, none,      none]
    let highlight_group.PmenuSbar    = [gray2,       gray5,       none,      none]
    let highlight_group.PmenuThumb   = [gray2,       gray3,       none,      none]
    " Diff
    let highlight_group.DiffAdd      = [lightgreen,  gray4,       none,      none]
    let highlight_group.DiffChange   = [lightyellow, gray4,       none,      none]
    let highlight_group.DiffDelete   = [lightpink,   gray4,       none,      none]
    let highlight_group.DiffText     = [lightyellow, gray4,       underline, none]
    " Miscellaneous
    let highlight_group.Directory    = [blue,        none,        none,      none]
    let highlight_group.NonText      = [gray4,       none,        none,      none]
    let highlight_group.SpecialKey   = [darkcyan,    none,        none,      none]
    let highlight_group.Conceal      = [gray4,       none,        none,      none]

    "*** Syntax groups (:h group-name) ***"
    let highlight_group.Comment      = [gray5,       none,        italic,    none]
    let highlight_group.Constant     = [green,       none,        none,      none]
    let highlight_group.Identifier   = [cyan,        none,        none,      none]
    let highlight_group.Statement    = [blue,        none,        none,      none]
    let highlight_group.PreProc      = [brown,       none,        none,      none]
    let highlight_group.Type         = [pink,        none,        none,      none]
    let highlight_group.Special      = [purple,      none,        none,      none]
    let highlight_group.Underlined   = [lightcyan,   none,        underline, none]
    let highlight_group.Ignore       = [gray4,       none,        none,      none]
    let highlight_group.Error        = [lightred,    none,        undercurl, lightred]
    let highlight_group.Todo         = [lightyellow, none,        underline, none]

    "*** Settings for plugin ***"
    let highlight_group.MatchParen = [none, gray4, boldunderline, none]
    let highlight_group.SwapCurrentItem  = [white, green, underline, none]
    let highlight_group.SwapSelectedItem = [white, cyan,  underline, none]
    let highlight_group.SwapItem         = [white, none,  underline, none]
    let highlight_group.HighlightedyankRegion = [none, gray4, none, none]
    let highlight_group.OperatorSandwichChange = [white, palegreen, none,   none]
    let highlight_group.OperatorSandwichDelete = [white, palered,   none,   none]
    let highlight_group.OperatorSandwichAdd    = [white, paleblue,  none,   none]
    let highlight_group.uniteStatusHead             = [blue,   gray1, none,   none]
    let highlight_group.uniteStatusSourceNames      = [purple, gray1, none,   none]
    let highlight_group.uniteStatusSourceCandidates = [pink,   gray1, none,   none]
    let highlight_group.uniteStatusMessage          = [gray5,  gray1, italic, none]
    let highlight_group.uniteStatusLineNR           = [brown,  gray1, none,   none]

    let bg_none    = {'gui': gray2.gui, 'cterm': 'NONE'}
  endif

  if get(g:, 'colorscheme_no_background', 0)
    let highlight_group.Normal[1]      = bg_none
    let highlight_group.TabLineFill[1] = bg_none
    let highlight_group.VertSplit[1]   = bg_none
    let highlight_group.SignColumn[1]  = bg_none
  endif

  if get(g:, 'colorscheme_no_italic', 0)
    let italic.gui = 'NONE'
    let italic.cterm = 'NONE'
  endif

  for [group, colors] in items(highlight_group)
    execute printf('highlight %s guifg=%s guibg=%s gui=%s, guisp=%s ctermfg=%s ctermbg=%s cterm=%s',
                \  group,
                \  colors[0]['gui'],
                \  colors[1]['gui'],
                \  colors[2]['gui'],
                \  colors[3]['gui'],
                \  colors[0]['cterm'],
                \  colors[1]['cterm'],
                \  colors[2]['cterm']
                \ )
  endfor
endfunction
call s:set()


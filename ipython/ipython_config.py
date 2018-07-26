from pygments.token import Token
c = get_config()

c.InteractiveShell.autoindent= True
c.InteractiveShell.colors = 'Linux'
c.InteractiveShell.confirm_exit = False
c.InteractiveShell.editor = 'vim'
c.InteractiveShell.xmode = 'Context'

c.InteractiveShellApp.exec_lines = ['%reload_ext autoreload', '%autoreload 2']
c.InteractiveShellApp.extensions = ['autoreload']

c.TerminalInteractiveShell.editing_mode = 'vi'
c.TerminalInteractiveShell.highlighting_style_overrides = {
    Token.Keyword: '#ff0087',
    Token.Keyword.Constant: '#0087ff',
    Token.Keyword.Reserved: '#ff0087',
    Token.Keyword.Type: '#5fd7ff',
    Token.Name: '#00ffff',
    Token.Name.Builtin: '#5fd7ff',
    Token.Name.Class: '#d7ff00',
    Token.Name.Constant: '#00ffff',
    Token.Name.Function: '#d7ff00',
    Token.Literal.String: '#00ffaf',
    Token.Literal.Number: '#af87ff',
    Token.Operator: '#ff0087',
    Token.Punctuation: '#ff0000',
}

c.TerminalIPythonApp.display_banner = False

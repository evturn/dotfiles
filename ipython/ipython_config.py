c = get_config()

c.InteractiveShell.autoindent= True
c.InteractiveShell.colors = 'Linux'
c.InteractiveShell.confirm_exit = False
c.InteractiveShell.editor = 'vim'
c.InteractiveShell.xmode = 'Context'

c.InteractiveShellApp.exec_lines = ['%reload_ext autoreload', '%autoreload 2']
c.InteractiveShellApp.extensions = ['autoreload']

c.TerminalInteractiveShell.editing_mode = 'vi'

c.TerminalIPythonApp.display_banner = False

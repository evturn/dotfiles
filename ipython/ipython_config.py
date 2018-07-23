c = get_config()

c.TerminalIPythonApp.display_banner = False
c.TerminalInteractiveShell.editing_mode = 'vi'

c.InteractiveShell.autoindent= True
c.InteractiveShell.colors = 'Linux'
c.InteractiveShell.confirm_exit = False
c.InteractiveShell.editor = 'nvim'

c.InteractiveShellApp.exec_lines = ['%reload_ext autoreload', '%autoreload 2']
c.InteractiveShellApp.extensions = ['autoreload']
c.InteractiveShell.xmode = 'Plain'

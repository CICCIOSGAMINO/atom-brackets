module.exports =
  activate: ->
      atom.workspaceView.command "brackets:curlybrackets", => @curlybrackets()
      atom.workspaceView.command "brackets:parentheses", => @parentheses()
      atom.workspaceView.command "brackets:squarebrackets", => @squarebrackets()

  curlybrackets: ->
      # this assume the active pane is an editor
      editor = atom.workspace.activePaneItem
      editor.insertText('{}')
  parentheses: ->
      # this assume the active pane is an editor
      editor = atom.workspace.activePaneItem
      editor.insertText('()')
  squarebrackets: ->
      # this assume the active pane is an editor
      editor = atom.workspace.activePaneItem
      editor.insertText('[]')

{CompositeDisposable} = require 'atom'

module.exports = Brackets =

  subscriptions: null

  activate: (state) ->

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'brackets:curlybrackets': => @curlybrackets()
    @subscriptions.add atom.commands.add 'atom-workspace', 'brackets:squarebrackets': => @squarebrackets()
    @subscriptions.add atom.commands.add 'atom-workspace', 'brackets:parenthesis': => @parenthesis()


  deactivate: ->
    @subscriptions.dispose()

  serialize: ->

  squarebrackets: ->
    # console.log 'Brackets1 Square'

    # get the active TextEditor and insert the right text
    if editor = atom.workspace.getActiveTextEditor()
      editor.insertText('[]')

  curlybrackets: ->
    # console.log 'Brackets1 Curly'

    # get the active TextEditor and insert the right text
    if editor = atom.workspace.getActiveTextEditor()
      editor.insertText('{}')

  parenthesis: ->
    # console.log 'Brackets1 Pharentesis'

    # get the active TextEditor and insert the right text
    if editor = atom.workspace.getActiveTextEditor()
      editor.insertText('()')

{View} = require 'atom'

module.exports =
class BracketsView extends View
  @content: ->
    @div class: 'brackets overlay from-top', =>
      @div "The Brackets package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "brackets:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "BracketsView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)

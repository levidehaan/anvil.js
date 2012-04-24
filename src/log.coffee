class Log

	# ## onEvent ##
	# Logs events in default console color
	# ### Args:
	# * _x {String}_: message to log
  # * _debug.variable {Object}_: Object to debug
  # * _debug.depth {int}_: depth to recurse
  # * _debug.showHidden {bool}_: Show non-enumerable properties
  # * _example_: {variable: this, showHidden: true, depth: 10}
  onEvent: (x, debug = false) ->
		
    console.log ("   #{ x }") unless quiet
    
    if debug
      console.log ("   " + x) + util.inspect(debug.variable, debug.showHidden, debug.depth)
    

	# ## onStep ##
	# Logs steps in blue
	# ### Args:
	# * _x {String}_: message to log
  # * _debug.variable {Object}_: Object to debug
  # * _debug.depth {int}_: depth to recurse
  # * _debug.showHidden {bool}_: Show non-enumerable properties
  # * _example_: {variable: this, showHidden: true, depth: 10}
  onStep: (x, debug = false) ->
		
    console.log "#{x}".blue unless quiet
    if debug
      console.log ("" + x + ": ").blue + util.inspect(debug.variable, debug.showHidden, debug.depth)
    else
      console.log ("" + x).blue

	# ## onComplete ##
	# Logs successful process completions in green
	# ### Args:
	# * _x {String}_: message to log
  # * _debug.variable {Object}_: Object to debug
  # * _debug.depth {int}_: depth to recurse
  # * _debug.showHidden {bool}_: Show non-enumerable properties
  # * _example_: {variable: this, showHidden: true, depth: 10}
  onComplete: (x, debug = false) ->
    if debug
      console.log ("" + x + ": ").green + util.inspect(debug.variable, debug.showHidden, debug.depth)
    else
      console.log ("" + x).green

	# ## onError ##
	# Logs errors in red
	# ### Args:
	# * _x {String}_: message to log
  # * _debug.variable {Object}_: Object to debug
  # * _debug.depth {int}_: depth to recurse
  # * _debug.showHidden {bool}_: Show non-enumerable properties
  # * _example_: {variable: this, showHidden: true, depth: 10}
  onError: (x, debug = false) ->
    if debug
      console.log ("!!! " + x + " !!!").red + util.inspect(debug.variable, debug.showHidden, debug.depth)
    else
      console.log ("!!! " + x + " !!!").red

log = new Log()

exports.log = log
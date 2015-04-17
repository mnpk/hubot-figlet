# Description:
#   figlet
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot figlet - generate figlet
#
# Author:
#   mnpk <mnncat@gmail.com>

module.exports = (robot) ->
  robot.respond /figlet\s*(.*)/i, (msg) ->
    input = msg.match[1]
    if not input
      msg.send "Usage: hubot figlet <word>"
      return
    figlet = require('figlet')
    msg.send figlet.textSync input

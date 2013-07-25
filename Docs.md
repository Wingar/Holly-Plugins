# Message commands
*The stuff from m.command will return*
- m.raw The raw message, eg > ":Nick!~username@xxx.xxx.xxx.xxx PRIVMSG #channel :message goes here"
- m.channel Channel name.
- m.message Obvious.
- m.user Obvious
- m.reply Reply to the last thing.
- m.action_reply Reply as if you used "/me"
- m.action? Returns true if the message was an action command from "/me"

# User commands
**All of these can be applied to m.user but is normally used with User("username").command**

- x.host Hostname (or IP) of the user that just sent the message you are acting on
- x.realname Real name of the user, if one is set, otherwise will return their username
- x.nick Nickname
- x.idle Amount of time (in seconds, minimum being 1) the user has been idle.
- x.monitor Will start monitoring the user for more reliable stats.
- x.monitored Boolean whether user is monitored or not.
- x.unmonitor Unmonitors
- x.online Obvious, but can be unreliable unless monitored.
- x.away If user is away, will return their away message. Otherwise will return nil.
- x.signed_on_at Will return in TimeDate when the user signed on
- x.channels Returns an array with all the channels a user is known to be in. Not reliable.

# Channel commands.
**These commands are used with Channel("#chanName").command**
- x.send message Self explanitory.
- x.kick nick If Holly is op, she'll kick that bastard.
- x.join "#chan" If you use this I will kill you.
- x.voice "user" Gives user voice perms, if Holly is op. Should be in user but screw logic.
- x.devoice "user" You shouldn't need me to work this one out for you
- x.op "user" Ops user, if Holly is op.
- x.deop "user" You shouldn't need me to work this one out for you
- x.invite "user" Invites a user to the channel.
- x.part "optional message" Leaves the channel. If you use this I will kill you.
- x.clear_users EMERGENCIES ONLY DAMMIT.
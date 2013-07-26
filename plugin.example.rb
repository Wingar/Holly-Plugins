require 'yaml' # No, this won't be used. Just be sure to put all requires up here.

class ExamplePlugin
	$plugin_list << ["Example Plugin", ExamplePlugin] # ["Plugin Name", ClassName]

	def self.on_private(m) # For private messages
		case m.message
		when /^Hello!$/i
			m.reply "Hello, #{m.user.nick}!"
		end
	end

	def self.on_channel(m) # For normal messages.
		case m.message
		when /^testing\stesting$/ix
			m.reply "Test received, #{m.user.name}!"
		when /^example\slog$/ix # Log all messages to database that are "example log"
			Example.new_message(m.user.nick, m.channel.to_s, m.time.to_s)
		when /^pm$/ix # Send a PM to the user that requested it.
			User(m.user.nick).send("Hi!")
		end
	end

	def self.on_command(m, query) # For any command like "holly: etc"
		case query
		when /^\s*?example$/i # Try to start regexes with "^\s*?". It makes life easy.
			m.reply "Example response."
		end
	end

	def self.on_admin(m, query) # Same as on_command except for admins.
		case query
		when /^\s*?admin\sexample$/i
			m.reply "Admin only command received."
		end
	end

	def global_message_example(message) # Send a message to the entire channel, but not as a reply. And no, this will never get called in this example.
		Channel($channel).send(message) # $channel is a global variable that is the name of the channel Holly is in.
	end
end
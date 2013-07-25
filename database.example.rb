# The database system is a bit different, it's just straight up Datamapper.

class Example
	include DataMapper::Resource

	property :id, Serial
	property :nick, String, :length => 255, :required => true, :index => :nick
	property :channel, String, :length => 100, :required => true, :index => :chan
	property :timestamp, DateTime, :required => true

	# For functions, have them using self stuff. No exceptions or your plugin won't get used.

	def self.new_message(nick, channel, timestamp)
		Example.create(:nick => nick, :channel => channel, :timestamp => timestamp)
	end
end
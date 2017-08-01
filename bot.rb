#!/usr/bin/env ruby

=begin 
Copyright © 2017 jimmybot@teknik.io

This program is free software: you can redistribute it and/or modify 
it under the terms of the GNU Affero General Public License as published by 
the Free Software Foundation, either version 3 of the License, or 
(at your option) any later version.

This program is distributed in the hope that it will be useful, 
but WITHOUT ANY WARRANTY; without even the implied warranty of 
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License 
along with this program. If not, see <https://www.gnu.org/licenses/>
=end

require 'securerandom'
require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: ENV['RUBY_SECRET'], client_id: 336663264572342275, prefix: '_'

  trap "SIGINT" do
    abort
  end

puts nil
puts "Roobi running on --> #{RUBY_PLATFORM}"
puts nil
puts 'Invite URL: https://tknk.io/1FME'
puts 'Click on it to invite it to your server.'
puts nil
puts "Establishing connection to Discord with WebSocket"

start_time = Time.now

def uptime(start_time)
  Time.now - start_time.to_i
end

rbv = `ruby -v`

entropy = `cat /proc/sys/kernel/random/entropy_avail`

  bot.command :RIP do |event|
    event.respond "https://cdn.discordapp.com/attachments/336494393978650635/339733384169390080/smackdatzn6_55293.jpg_480_480_0_64000_0_1_0.jpg"
  end

  bot.command :source do |event|
    event.respond("You can see a copy my source, in accordance with the AGPLv3 license, without using any non-free software at this link\nhttps://raw.githubusercontent.com/jmfgdev/roobi/master/bot.rb")
  end

  bot.command :rbv do |event|
    event.respond(rbv)
  end

  bot.command :entropy do |event|
	  event.respond("Linux kernel entropy --> #{entropy}")
  end
 
  bot.command :passgen do |event|
    event.user.pm(SecureRandom.base64(15))
    event.respond("Check ur pm's #{event.user.name}")
  end

  bot.command :upload do |event|
    event.respond("https://upload.teknik.io/")
  end

  bot.command :paste do |event|
    event.respond("https://paste.teknik.io/")
  end

  bot.command :teknikode do |event|
    event.respond("https://git.teknik.io/teknikode/teknik/")
  end

  bot.command :platform do |event|
	  event.respond("My platform is: #{RUBY_PLATFORM}\n\n My Ruby version is: #{rbv}")
  end

  bot.command :kek do |event|
	  event.respond("***KEK***")
  end

  bot.command :shutdown do |event|
    if (event.user.id == 235936608841498625)
      event.respond("You're authorized to shutdown")
    else
      event.respond("You're not authorized to shutdown")
    end

	  break unless event.user.id == 235936608841498625
  
  bot.send_message(event.channel.id, 'Bot is shutting down')
  exit
  end

  bot.command :delet do |event|
    event.respond("https://pbs.twimg.com/media/C66t5SVU4AAy-co.jpg")
  end

  bot.command :b1nzy do |event|
    event.respond("https://takeb1nzyto.space/")
  end

  bot.command :virustotal do |event|
	  event.respond "https://virustotal.com (Requires JS & COOKIES!!!)"
  end

  bot.command :hello do |event|
	  event.respond "Hello, #{event.user.name}"
  end

  bot.command :discord do |event|
	  event.respond '***MODERN C++***'
  end

  bot.command :uptime do |event|
	  event.respond "I have been running for #{uptime(start_time).to_i} seconds"
  end

  bot.command :ping do |event|
	  event.respond "Pong!\n\nThat took `#{((Time.now - event.timestamp) * 1000).to_i}ms`"
  end

  bot.command :whoami do |event|
	  event.user.name
  end

  bot.command :license do |event|
  event.respond("
Copyright © 2017 jimmybot@teknik.io

This program is free software: you can redistribute it and/or modify 
it under the terms of the GNU Affero General Public License as published by 
the Free Software Foundation, either version 3 of the License, or 
(at your option) any later version.

This program is distributed in the hope that it will be useful, 
but WITHOUT ANY WARRANTY; without even the implied warranty of 
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License 
along with this program. If not, see <https://www.gnu.org/licenses/>")
  end

bot.run

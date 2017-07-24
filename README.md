# roobi

my silly Discord bot, Roobi.

Roobi needs a ton of work, but it'll happen, I love working on this bot, because I love working in Ruby in general.

Roobi only starts up quickly and runs lightly on Ruby 2.4+

there are only two require statements, require "discordrb" and require "securerandom"
the securerandom is for the command _passgen to be OS independent. _sslpassgen sends the user who called the command a pretty decent password, you can call the command _entropy to see the entropy of the GNU/Linux server (this only runs on GNU/Linux, btw), I mean I guess it can run without GNU, but why would you want to do that? ;P of course this bot runs on Alpine Linux, but by the time you finish setting it up you'll proabably have installed enough GNU software it's pretty much Alpine GNU/Linux

Install rvm so I don't have to advise you to give gem root priviledge while installing discordrb and dependencies, as system Ruby will require sudo gem

install rvm from <https://rvm.io>

```bash
# Install mpapis public key (might need `gpg2` and or `sudo`)
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

# Download the installer
\curl -O https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer
\curl -O https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer.asc

# Verify the installer signature (might need `gpg2`), and if it validates...
gpg --verify rvm-installer.asc &&

# Run the installer
bash rvm-installer stable --ruby
```

If the --ruby flag doesn't work to install ruby do `sudo rvm install ruby`

then do rvm --default use ruby

exit the current shell or open a new one, and run ruby -v, you should have ruby 2.4.0+

next, you can install gems without sudo, so remember not to give it uneccesary power over your system, just `gem install discordrb`, securerandom is already a part of ruby,so you don't need to install anything for that.

once that's done and you edit the source to use your user ID, client id and token,
you should be able to run the bot as it was intended with `ruby bot.rb`

this bot does nothing not already included in discordrb, so you don't need libsodium, I haven't added sound functionality yet anyways. Nor do I have any ideas for.
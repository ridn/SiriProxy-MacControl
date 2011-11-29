require 'cora'
require 'siri_objects'
#######
# This is a quickly written Siri plugin to give control of the mac running the proxy.
#PathKiller29
#Opening application must be in the /Applications/ folder or otherwise rewritten below to the correct directory
######

class SiriProxy::Plugin::siriproxy-maccontrol < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
  end

   
       listen_for /Open Applications Folder/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("YES!")
reply = system("open", 'file:///Applications/' )
#reply = `open "file:///`

    add_views.views << utterance
    
    #you can also do "send_object object, target: :guzzoni" in order to send an object to guzzoni
    send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end



    listen_for /Open google/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("Opening Google!")
    reply = system("open", 'http://google.com' )

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end




    listen_for /Open twitter/ do
 response = ask "Application or Site?" #ask the user for something
    
    if(response =~ /Application/i) #process their response
      say "Opening twitter app!" 
   reply = system("open", 'file:///Applications/Twitter.app' )

    else #if (response =~ /Site/i)
      say "Opening twitter!"
   say = system("open", "http://twitter.com" )

    end



    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

 listen_for /Open launchpad/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("YES!")
    reply = system("open", 'file:///Applications/LaunchPad.app' )

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end


listen_for /Open launch pad/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("YES!")
    reply = system("open", 'file:///Applications/LaunchPad.app' )

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end


listen_for /close launch pad/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("YES!")
    reply = system("open", 'file:///Applications/LaunchPad.app' )

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

listen_for /close launchpad/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("YES!")
    reply = system("open", 'file:///Applications/LaunchPad.app' )
#same as opening but no one wants to say open in order to close it.
    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end


listen_for /Open papi jump/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("YES!")
reply = system("open", 'file:///Applications/PapiJumpFree.app' )

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

listen_for /Open iTunes/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("Opening iTunes!")
reply = system("open", 'file:///Applications/iTunes.app' )

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

listen_for /Bake me a cake/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("Just a sec")
reply = system("open", 'http://lmgtfy.com/?q=cake' )
#just for fun
    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

#For all iTunes controlling commands, a script is required.
listen_for /Mac Play/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("Playing Music on Mac")
    reply = system('itunes play')

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

listen_for /Mac Pause/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("Pausing Music on Mac")
    reply = system('itunes pause')

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end


listen_for /Mac Next song/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("Playing next song on Mac")
    reply = system('itunes next')

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

listen_for /Mac last song/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("Playing previous track on Mac")
    reply = system('itunes prev')

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

listen_for /Mac mute/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("Muting Mac")
    reply = system('itunes mute')

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end
listen_for /Mac unmute/i do
    add_views = SiriAddViews.new
    add_views.make_root(last_ref_id)
    utterance = SiriAssistantUtteranceView.new("Unmuting Mac")
    reply = system('itunes unmute')

    add_views.views << utterance
    
      send_object add_views #send_object takes a hash or a SiriObject object
    
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

end

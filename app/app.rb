require "sinatra"
require "espeak"

include ESpeak

class HipPlayer < Sinatra::Base
  get "/" do
    "This is a Hip Player, YO!"
  end

  get "/speak" do
    speech = Speech.new("ololo")
    speech.speak
  end
end

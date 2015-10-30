require "sinatra"
require "espeak"

include ESpeak

class HipPlayer < Sinatra::Base
  get "/" do
    "This is a HipPlayer Client, YO!"
  end

  post "/speak" do
    puts "test"
    speech = Speech.new(params[:text])
    speech.speak
  end
end

require_relative "app/services/notifier"
require_relative "app/services/speaker"
require "sinatra"

class HipPlayer < Sinatra::Base
  get "/" do
    "This is a HipPlayer Client, yo!"
  end

  post "/speak" do
    puts "check speak"
    speaker = Speech.new(params[:text])
    speaker.speak
  end

  post "/notify" do
    puts "check notify"
    notifier = Notifier.new(params[:type])
    notifier.call
  end
end

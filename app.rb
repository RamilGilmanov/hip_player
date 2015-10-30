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
    puts "check speak"
    notifier = Notify.new(params[:type])
    notifier.call
  end
end

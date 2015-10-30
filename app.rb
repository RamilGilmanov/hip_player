require_relative "app/services/notifier"
require_relative "app/services/speaker"
require "sinatra"

class HipPlayer < Sinatra::Base
  get "/" do
    "This is a HipPlayer Client, yo!"
  end

  post "/speak" do
    speaker = Speaker.new(params[:text])
    speaker.call
  end

  post "/notify" do
    notifier = Notifier.new(params[:type])
    notifier.call
  end
end

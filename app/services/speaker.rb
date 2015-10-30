require "espeak"
require "whatlanguage"

class Speaker
  include ESpeak

  def initialize(text)
    @text = text
  end

  def call
    speech = Speech.new(@text, voice: "ru")
    speech.speak
  end
end

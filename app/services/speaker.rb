require "espeak"

class Speaker
  include ESpeak

  def initialize(text)
    @text = text
  end

  def call
    speech = Speech.new(@text)
    speech.speak
  end
end

require "espeak"
require "whatlanguage"

class Speaker
  include ESpeak

  def initialize(text)
    @text = text
  end

  def call
    speech = Speech.new(@text, voice: language_code)
    speech.speak
  end

  private

  def language_code
    @text.language.to_s[0..1] || "en"
  end
end

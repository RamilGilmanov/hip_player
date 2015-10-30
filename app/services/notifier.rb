class Notifier
  def initialize(notification_type)
    @notification_type = notification_type
  end

  def call
    system("afplay #{file_name}")
  end

  private

  def file_name
    File.expand_path("./app/data/#{@notification_type}_#{rand(5)}.mp3")
  end
end

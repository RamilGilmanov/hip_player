class Notifier
  def initialize(notification_type)
    @notification_type = notification_type
  end

  def call
    puts @notification_type
  end
end

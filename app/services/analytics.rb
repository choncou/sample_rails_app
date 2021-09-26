require 'appsignal/integrations/object'

class Analytics
  def self.track_post_title_search(letter, sleep = sleep(1))
    # Some heavy processing
    sleep 1
  end
  appsignal_instrument_class_method :track_post_title_search
end


module RubyPushNotifications
  module GCM
    class GCMNotification

      attr_accessor :results

      def initialize(registration_ids, data)
        @registration_ids = registration_ids
        @data = data
      end

      def as_gcm_json
        JSON.dump(
          registration_ids: @registration_ids,
          data: @data
        )
      end
    end
  end
end

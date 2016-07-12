module Sisecommerce
  module APIPut
    module ClassMethods
      def put(data = nil)
        data ||= {}
        Request.send_request('PUT', "#{resource_name_pluralized}", data) if data.is_a? Hash
      end
    end

    def self.included(base)
      base.extend(ClassMethods)
    end
  end
end

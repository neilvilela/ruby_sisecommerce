module Sisecommerce
  module APIAll
    module ClassMethods
      def all(page = 1)
        Request.send_request('GET', self.url, {page: page})
      end
    end

    def self.included(base)
      base.extend(ClassMethods)
    end
  end
end

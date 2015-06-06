module LazySpec
  module Helpers
    module Json
      def json
        @json ||= JSON.parse(response.body)
        rescue JSON::ParserError, JSON::GeneratorError
          nil
      end
    end
  end
end

RSpec.configure do |config|
  config.include LazySpec::Helpers::Json
end

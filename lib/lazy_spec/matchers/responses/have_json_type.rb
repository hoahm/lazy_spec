RSpec::Matchers.define :have_json_type do
  match do |response|
    response.header['Content-Type'].include?('application/json')
  end

  failure_message do
    "Expect Content-Type '#{response.header['Content-Type']}' header to be 'application/json'"
  end

  failure_message_when_negated do
    "Expect Content-Type '#{response.header['Content-Type']}' header NOT to be 'application/json'"
  end

  description do
    "test if HTTP 'Content-Type' header is 'application/json'"
  end
end

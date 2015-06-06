RSpec::Matchers.define :have_content_type do |content_type|
  match do |response|
    response.header['Content-Type'].include?(content_type)
  end

  failure_message do
    "Expect Content-Type '#{response.header['Content-Type']}' header to be '#{content_type}'"
  end

  failure_message_when_negated do
    "Expect Content-Type '#{response.header['Content-Type']}' header NOT to be '#{content_type}'"
  end

  description do
    "test if HTTP 'Content-Type' header is '#{content_type}'"
  end
end

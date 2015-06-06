RSpec::Matchers.define :have_charset do |charset|
  match do |response|
    response.header['Content-Type'].match(/#{charset.downcase}/i)
  end

  failure_message do |response|
    "Expect Content-Type '#{response.header['Content-Type']}' header to have charset '#{charset}'"
  end

  failure_message_when_negated do |response|
    "Expect Content-Type '#{response.header['Content-Type']}' header NOT to have charset '#{charset}'"
  end

  description do
    "test if HTTP 'Content-Type' header is '#{charset}'"
  end
end

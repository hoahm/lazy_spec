RSpec::Matchers.define :be_a_collection do |options|
  match do |response|
    options ||= {}
    array?(response) && collection_length?(response, options[:length])
  end

  failure_message do
    "Expect #{response} to be a collection, #{@missing}"
  end

  failure_message_when_negated do
    "Expect #{response.inspect} NOT to be a collection, #{@missing}"
  end

  description do
    'test if response data is a collection'
  end

  protected

  def array?(response)
    response.is_a?(Array)
  end

  def collection_length?(response, length)
    return true unless array?(response)
    return true unless length
    return true if response.length == length
    @missing = "with length of #{length} but #{response.length}"
    false
  end
end

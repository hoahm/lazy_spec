RSpec::Matchers.define :have_attributes do |attributes|
  match do |response|
    unless response.is_a?(Hash)
      @missing = 'but data is not a Hash'
      return false
    end

    unless attributes.is_a?(Array)
      @missing = 'but attributes is not an Array'
      return false
    end

    keys = response.keys
    keys.to_set == attributes.to_set
  end

  failure_message do |response|
    "Expect #{response.inspect} contains these attributes #{attributes}, #{@missing}"
  end

  failure_message_when_negated do |response|
    "Expect #{response.inspect} NOT contains these attributes #{attributes}, #{@missing}"
  end

  description do
    'test if response contains attributes'
  end
end

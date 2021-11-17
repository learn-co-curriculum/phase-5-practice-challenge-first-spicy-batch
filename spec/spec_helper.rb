require_relative '../lib/first_spicy_batch'

RSpec.configure { |config| config.order = :default }

RSpec::Expectations.configuration.on_potential_false_positives = :nothing

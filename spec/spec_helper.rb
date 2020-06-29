require "bundler/setup"
require "url_shortner"

RSpec.configure do |config|
  config.before(:all) do
    UrlShortner.configure do |config|
      config.unique_key_length = ENV['UNIQUE_KEY_LENGTH']
      config.base_url = ENV['BASE_URL']
    end
  end
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

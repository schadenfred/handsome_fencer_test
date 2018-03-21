require 'rails/generators'
require 'byebug'
class HandsomeFencerTest::InstallGenerator < Rails::Generators::Base

  source_root File.expand_path("../templates", __FILE__)

  def copy_guardfile_file
    copy_file "Guardfile.tt", "Guardfile"
  end

  def copy_test_helper_file
    if destination_root == Rails.root.to_s
      copy_file "test_helper.rb.tt", "test/test_helper.rb"
    else
      copy_file "engine_test_helper.rb.tt", "test/test_helper.rb"
    end
  end

  def copy_test_support_files
    directory "support", "test/support"
  end

  def configure_test_with_spec
    byebug
    if destination_root == Rails.root.to_s
      file = 'config/application.rb'
    else
      file = 'test/dummy/config/application.rb'
    end
    inject_into_file file, after: "class Application < Rails::Application\n" do
      <<-'RUBY'
        # Force new test files to be generated in the minitest-spec style
        config.generators do |g|
          g.test_framework :minitest, spec: true
          g.scaffold_stylesheet false
        end
      RUBY
    end
  end
end

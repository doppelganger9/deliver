require 'json'
require 'deliver/version'
require 'deliver/app'
require 'deliver/app_metadata'
require 'deliver/metadata_item'
require 'deliver/app_screenshot'
require 'deliver/itunes_connect/itunes_connect'
require 'deliver/itunes_search_api'
require 'deliver/itunes_transporter'
require 'deliver/deliverfile/deliverfile'
require 'deliver/deliverfile/deliverfile_creator'
require 'deliver/deliverer'
require 'deliver/ipa_uploader'
require 'deliver/pdf_generator'
require 'deliver/deliver_process'
require 'deliver/dependency_checker'
require 'deliver/ipa_file_analyser'
require 'deliver/testflight'

require 'fastlane_core'

module Deliver
  Helper = FastlaneCore::Helper # you gotta love Ruby: Helper.* should use the Helper class contained in FastlaneCore

  FastlaneCore::UpdateChecker.verify_latest_version('deliver', Deliver::VERSION)
  Deliver::DependencyChecker.check_dependencies
end

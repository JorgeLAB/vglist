# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rspec-rails` gem.
# Please instead update this file by running `bin/tapioca gem rspec-rails`.

# typed: true

module RSpec
  extend ::RSpec::Support::Warnings
  extend ::RSpec::Core::Warnings

  class << self
    def clear_examples; end
    def configuration; end
    def configuration=(_arg0); end
    def configure; end
    def const_missing(name); end
    def context(*args, &example_group_block); end
    def current_example; end
    def current_example=(example); end
    def describe(*args, &example_group_block); end
    def example_group(*args, &example_group_block); end
    def fcontext(*args, &example_group_block); end
    def fdescribe(*args, &example_group_block); end
    def feature(*args, &example_group_block); end
    def ffeature(*args, &example_group_block); end
    def reset; end
    def shared_context(name, *args, &block); end
    def shared_examples(name, *args, &block); end
    def shared_examples_for(name, *args, &block); end
    def world; end
    def world=(_arg0); end
    def xcontext(*args, &example_group_block); end
    def xdescribe(*args, &example_group_block); end
    def xfeature(*args, &example_group_block); end
  end
end

RSpec::MODULES_TO_AUTOLOAD = T.let(T.unsafe(nil), Hash)

module RSpec::Rails
  class << self
    def add_test_type_configurations(config); end
    def initialize_configuration(config); end

    private

    def disable_testunit_autorun; end
  end
end

class RSpec::Rails::ActiveRecordConfiguration
  class << self
    def initialize_activerecord_configuration(config); end
  end
end

class RSpec::Rails::AssertionDelegator < ::Module
  def initialize(*assertion_modules); end
end

RSpec::Rails::Assertions = Minitest::Assertions
module RSpec::Rails::ChannelExampleGroup; end
module RSpec::Rails::ChannelExampleGroup::ClassMethods; end
class RSpec::Rails::Configuration; end

module RSpec::Rails::ControllerAssertionDelegator
  def assert_generates(*args, &block); end
  def assert_recognizes(*args, &block); end
  def assert_routing(*args, &block); end
  def assertion_instance; end
  def build_assertion_instance; end
  def setup(*args, &block); end
  def with_routing(*args, &block); end
end

module RSpec::Rails::ControllerExampleGroup
  include ::RSpec::Rails::Matchers::RedirectTo
  include ::RSpec::Rails::Matchers::RenderTemplate
  include ::RSpec::Rails::Matchers::RoutingMatchers
  include ::RSpec::Rails::ControllerAssertionDelegator
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures
  include ::RSpec::Rails::FixtureSupport
  include ::RSpec::Rails::RailsExampleGroup
  include ::ActiveSupport::Testing::ConstantLookup
  include ::Rails::Dom::Testing::Assertions
  include ::ActionController::TemplateAssertions
  include ::ActionDispatch::Assertions
  include ::ActionController::TestCase::Behavior
  include ::RSpec::Rails::ViewRendering

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
  mixes_in_class_methods ::ActiveSupport::Testing::ConstantLookup::ClassMethods
  mixes_in_class_methods ::ActionController::TestCase::Behavior::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::ViewRendering::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::ControllerExampleGroup::ClassMethods

  def bypass_rescue; end
  def controller; end
  def method_missing(method, *args, &block); end
  def routes; end
  def routes=(routes); end

  private

  def route_available?(method); end
  def route_defined?(routes, method); end
end

module RSpec::Rails::ControllerExampleGroup::BypassRescue
  def rescue_with_handler(exception); end
end

module RSpec::Rails::ControllerExampleGroup::ClassMethods
  def controller(base_class = T.unsafe(nil), &body); end
  def controller_class; end
  def routes; end
end

RSpec::Rails::DIRECTORY_MAPPINGS = T.let(T.unsafe(nil), Hash)

module RSpec::Rails::FeatureCheck
  private

  def has_action_cable_testing?; end
  def has_action_mailbox?; end
  def has_action_mailer?; end
  def has_action_mailer_parameterized?; end
  def has_action_mailer_preview?; end
  def has_action_mailer_unified_delivery?; end
  def has_active_job?; end
  def has_active_record?; end
  def has_active_record_migration?; end
  def type_metatag(type); end

  class << self
    def has_action_cable_testing?; end
    def has_action_mailbox?; end
    def has_action_mailer?; end
    def has_action_mailer_parameterized?; end
    def has_action_mailer_preview?; end
    def has_action_mailer_unified_delivery?; end
    def has_active_job?; end
    def has_active_record?; end
    def has_active_record_migration?; end
    def type_metatag(type); end
  end
end

module RSpec::Rails::FeatureExampleGroup
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures
  include ::RSpec::Rails::FixtureSupport
  include ::RSpec::Rails::RailsExampleGroup
  include ::ActionDispatch::Routing::UrlFor
  include ::ActionDispatch::Routing::RouteSet::MountedHelpers

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods

  def visit(*_arg0); end
end

RSpec::Rails::FeatureExampleGroup::DEFAULT_HOST = T.let(T.unsafe(nil), String)

module RSpec::Rails::FileFixtureSupport
  extend ::ActiveSupport::Concern
  include ::ActiveSupport::Testing::FileFixtures
end

module RSpec::Rails::FixtureFileUploadSupport
  def fixture_file_upload(*_arg0, &_arg1); end

  private

  def rails_fixture_file_wrapper; end
end

class RSpec::Rails::FixtureFileUploadSupport::RailsFixtureFileWrapper
  include ::ActionDispatch::TestProcess::FixtureFile
  include ::ActionDispatch::TestProcess
  include ::ActiveSupport::Testing::FileFixtures

  def file_fixture_path; end
  def file_fixture_path?; end

  class << self
    def file_fixture_path; end
    def file_fixture_path=(value); end
    def file_fixture_path?; end
    def fixture_path; end
    def fixture_path=(_arg0); end
    def instance; end
  end
end

module RSpec::Rails::FixtureSupport
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods

  def run_in_transaction?; end
end

module RSpec::Rails::FixtureSupport::Fixtures
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
end

module RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
  def fixtures(*args); end
  def proxy_method_warning_if_called_in_before_context_scope(method_name); end
end

module RSpec::Rails::HelperExampleGroup
  include ::RSpec::Rails::ViewAssigns
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures
  include ::RSpec::Rails::FixtureSupport
  include ::RSpec::Rails::RailsExampleGroup
  include ::Rails::Dom::Testing::Assertions
  include ::ActionDispatch::Assertions
  include ::AbstractController::Helpers
  include ::ActionView::Helpers::TagHelper
  include ::ActionView::Helpers::AssetTagHelper
  include ::ActionView::Helpers::UrlHelper
  include ::ActionView::Helpers::SanitizeHelper
  include ::ActionView::Helpers::TextHelper
  include ::ActionView::Helpers::FormTagHelper
  include ::ActionView::Helpers::FormHelper
  include ::ActionView::Helpers::TranslationHelper
  include ::ActionView::Helpers
  include ::ActiveSupport::Testing::ConstantLookup
  include ::ActionView::TestCase::Behavior

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
  mixes_in_class_methods ::AbstractController::Helpers::ClassMethods
  mixes_in_class_methods ::ActionView::Helpers::UrlHelper::ClassMethods
  mixes_in_class_methods ::ActionView::Helpers::SanitizeHelper::ClassMethods
  mixes_in_class_methods ::ActiveSupport::Testing::ConstantLookup::ClassMethods
  mixes_in_class_methods ::ActionView::TestCase::Behavior::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::HelperExampleGroup::ClassMethods

  def helper; end

  private

  def _controller_path(example); end
end

module RSpec::Rails::HelperExampleGroup::ClassMethods
  def determine_constant_from_test_name(_ignore); end
end

module RSpec::Rails::JobExampleGroup
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures
  include ::RSpec::Rails::FixtureSupport
  include ::RSpec::Rails::RailsExampleGroup

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
end

module RSpec::Rails::MailboxExampleGroup
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::RSpec::Rails::MailboxExampleGroup::ClassMethods

  def have_been_delivered; end
  def have_bounced; end
  def have_failed; end
  def process(message); end

  class << self
    def create_inbound_email(_arg); end
  end
end

module RSpec::Rails::MailboxExampleGroup::ClassMethods
  def mailbox_class; end
end

module RSpec::Rails::MailerExampleGroup
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures
  include ::RSpec::Rails::FixtureSupport
  include ::RSpec::Rails::RailsExampleGroup
  include ::ActiveSupport::Testing::ConstantLookup
  include ::ActionMailer::TestCase::Behavior
  include ::ActionDispatch::Routing::UrlFor

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
  mixes_in_class_methods ::ActiveSupport::Testing::ConstantLookup::ClassMethods
  mixes_in_class_methods ::ActionMailer::TestCase::Behavior::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MailerExampleGroup::ClassMethods
end

module RSpec::Rails::MailerExampleGroup::ClassMethods
  def mailer_class; end
end

module RSpec::Rails::Matchers
  def be_a_new(model_class); end
  def be_new_record; end
  def be_valid(*args); end
  def enqueue_email(mailer_class = T.unsafe(nil), mail_method_name = T.unsafe(nil)); end
  def enqueue_job(job = T.unsafe(nil)); end
  def enqueue_mail(mailer_class = T.unsafe(nil), mail_method_name = T.unsafe(nil)); end
  def have_been_enqueued; end
  def have_been_performed; end
  def have_enqueued_email(mailer_class = T.unsafe(nil), mail_method_name = T.unsafe(nil)); end
  def have_enqueued_job(job = T.unsafe(nil)); end
  def have_enqueued_mail(mailer_class = T.unsafe(nil), mail_method_name = T.unsafe(nil)); end
  def have_http_status(target); end
  def have_performed_job(job = T.unsafe(nil)); end
  def perform_job(job = T.unsafe(nil)); end

  private

  def check_active_job_adapter; end
end

module RSpec::Rails::Matchers::ActionCable; end

class RSpec::Rails::Matchers::ActionCable::HaveStream < ::RSpec::Matchers::BuiltIn::BaseMatcher
  def does_not_match?(subscription); end
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(subscription); end

  private

  def base_message; end
  def match(subscription); end
  def no_expected?; end
end

module RSpec::Rails::Matchers::ActiveJob; end

class RSpec::Rails::Matchers::ActiveJob::Base < ::RSpec::Rails::Matchers::BaseMatcher
  def initialize; end

  def at(time_or_date); end
  def at_least(count); end
  def at_most(count); end
  def exactly(count); end
  def failure_message; end
  def failure_message_when_negated; end
  def message_expectation_modifier; end
  def on_queue(queue); end
  def once; end
  def supports_block_expectations?; end
  def thrice; end
  def times; end
  def twice; end
  def with(*args, &block); end

  private

  def arguments_match?(job); end
  def at_match?(job); end
  def base_job_message(job); end
  def base_message; end
  def check(jobs); end
  def check_for_inprecise_value(scheduled_at); end
  def deserialize_arguments(job); end
  def job_match?(job); end
  def queue_adapter; end
  def queue_match?(job); end
  def serialize_and_deserialize_arguments(args); end
  def set_expected_number(relativity, count); end
end

class RSpec::Rails::Matchers::ActiveJob::HaveBeenEnqueued < ::RSpec::Rails::Matchers::ActiveJob::Base
  def does_not_match?(proc); end
  def matches?(job); end
end

RSpec::Rails::Matchers::ActiveJob::HaveBeenEnqueued::FAILURE_MESSAGE_EXPECTATION_ACTION = T.let(T.unsafe(nil), String)
RSpec::Rails::Matchers::ActiveJob::HaveBeenEnqueued::MESSAGE_EXPECTATION_ACTION = T.let(T.unsafe(nil), String)

class RSpec::Rails::Matchers::ActiveJob::HaveBeenPerformed < ::RSpec::Rails::Matchers::ActiveJob::Base
  def matches?(job); end
end

RSpec::Rails::Matchers::ActiveJob::HaveBeenPerformed::FAILURE_MESSAGE_EXPECTATION_ACTION = T.let(T.unsafe(nil), String)
RSpec::Rails::Matchers::ActiveJob::HaveBeenPerformed::MESSAGE_EXPECTATION_ACTION = T.let(T.unsafe(nil), String)

class RSpec::Rails::Matchers::ActiveJob::HaveEnqueuedJob < ::RSpec::Rails::Matchers::ActiveJob::Base
  def initialize(job); end

  def does_not_match?(proc); end
  def matches?(proc); end
end

RSpec::Rails::Matchers::ActiveJob::HaveEnqueuedJob::FAILURE_MESSAGE_EXPECTATION_ACTION = T.let(T.unsafe(nil), String)
RSpec::Rails::Matchers::ActiveJob::HaveEnqueuedJob::MESSAGE_EXPECTATION_ACTION = T.let(T.unsafe(nil), String)

class RSpec::Rails::Matchers::ActiveJob::HavePerformedJob < ::RSpec::Rails::Matchers::ActiveJob::Base
  def initialize(job); end

  def matches?(proc); end
end

RSpec::Rails::Matchers::ActiveJob::HavePerformedJob::FAILURE_MESSAGE_EXPECTATION_ACTION = T.let(T.unsafe(nil), String)
RSpec::Rails::Matchers::ActiveJob::HavePerformedJob::MESSAGE_EXPECTATION_ACTION = T.let(T.unsafe(nil), String)

class RSpec::Rails::Matchers::BaseMatcher
  include ::RSpec::Matchers::Composable
  include ::RSpec::Rails::Matchers::BaseMatcher::HashFormatting
  include ::RSpec::Rails::Matchers::BaseMatcher::DefaultFailureMessages

  def initialize(expected = T.unsafe(nil)); end

  def actual; end
  def actual_formatted; end
  def description; end
  def diffable?; end
  def expected; end
  def expected_formatted; end
  def expects_call_stack_jump?; end
  def match_unless_raises(*exceptions); end
  def matcher_name; end
  def matcher_name=(_arg0); end
  def matches?(actual); end
  def present_ivars; end
  def rescued_exception; end
  def supports_block_expectations?; end

  private

  def assert_ivars(*expected_ivars); end

  class << self
    def matcher_name; end

    private

    def underscore(camel_cased_word); end
  end
end

module RSpec::Rails::Matchers::BaseMatcher::DefaultFailureMessages
  def failure_message; end
  def failure_message_when_negated; end

  class << self
    def has_default_failure_messages?(matcher); end
  end
end

module RSpec::Rails::Matchers::BaseMatcher::HashFormatting
  private

  def improve_hash_formatting(inspect_string); end

  class << self
    def improve_hash_formatting(inspect_string); end
  end
end

RSpec::Rails::Matchers::BaseMatcher::UNDEFINED = T.let(T.unsafe(nil), Object)

class RSpec::Rails::Matchers::BeANew < ::RSpec::Rails::Matchers::BaseMatcher
  def initialize(expected); end

  def failure_message; end
  def matches?(actual); end
  def with(expected_attributes); end

  private

  def attributes; end
  def attributes_match?(actual); end
  def unmatched_attributes; end
end

class RSpec::Rails::Matchers::BeANewRecord < ::RSpec::Rails::Matchers::BaseMatcher
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(actual); end
end

class RSpec::Rails::Matchers::BeValid < ::RSpec::Matchers::BuiltIn::Be
  def initialize(*args); end

  def failure_message; end
  def failure_message_when_negated; end
  def matches?(actual); end
end

class RSpec::Rails::Matchers::HaveEnqueuedMail < ::RSpec::Rails::Matchers::ActiveJob::HaveEnqueuedJob
  include ::RSpec::Mocks::ArgumentMatchers

  def initialize(mailer_class, method_name); end

  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(block); end
  def with(*args, &block); end

  private

  def arguments_match?(job); end
  def base_mailer_args; end
  def base_message; end
  def check_active_job_adapter; end
  def expected_count_message; end
  def job_match?(job); end
  def legacy_mail?(job); end
  def mail_job_message(job); end
  def mailer_class_name; end
  def parameterized_mail?(job); end
  def unified_mail?(job); end
  def unmatching_mail_jobs; end
  def unmatching_mail_jobs_message; end
  def yield_mail_args(block); end
end

RSpec::Rails::Matchers::HaveEnqueuedMail::MAILER_JOB_METHOD = T.let(T.unsafe(nil), String)

module RSpec::Rails::Matchers::HaveHttpStatus
  def invalid_response_type_message; end

  private

  def as_test_response(obj); end

  class << self
    def as_test_response(obj); end
    def matcher_for_status(target); end
  end
end

class RSpec::Rails::Matchers::HaveHttpStatus::GenericStatus < ::RSpec::Rails::Matchers::BaseMatcher
  include ::RSpec::Rails::Matchers::HaveHttpStatus

  def initialize(type); end

  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(response); end

  protected

  def check_expected_status(test_response, expected); end

  private

  def type_codes; end
  def type_message; end

  class << self
    def valid_statuses; end
  end
end

RSpec::Rails::Matchers::HaveHttpStatus::GenericStatus::RESPONSE_METHODS = T.let(T.unsafe(nil), Hash)

class RSpec::Rails::Matchers::HaveHttpStatus::NumericCode < ::RSpec::Rails::Matchers::BaseMatcher
  include ::RSpec::Rails::Matchers::HaveHttpStatus

  def initialize(code); end

  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(response); end
end

class RSpec::Rails::Matchers::HaveHttpStatus::SymbolicStatus < ::RSpec::Rails::Matchers::BaseMatcher
  include ::RSpec::Rails::Matchers::HaveHttpStatus

  def initialize(status); end

  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(response); end

  private

  def actual_status; end
  def compute_status_from(code); end
  def expected_status; end
  def pp_actual; end
  def pp_expected; end
  def pp_status(status, code); end
  def set_expected_code!; end
end

module RSpec::Rails::Matchers::RedirectTo
  def redirect_to(target); end
end

class RSpec::Rails::Matchers::RedirectTo::RedirectTo < ::RSpec::Rails::Matchers::BaseMatcher
  def initialize(scope, expected); end

  def failure_message; end
  def failure_message_when_negated; end
  def matches?(_); end
end

module RSpec::Rails::Matchers::RenderTemplate
  def have_rendered(options, message = T.unsafe(nil)); end
  def render_template(options, message = T.unsafe(nil)); end
end

class RSpec::Rails::Matchers::RenderTemplate::RenderTemplateMatcher < ::RSpec::Rails::Matchers::BaseMatcher
  def initialize(scope, expected, message = T.unsafe(nil)); end

  def check_redirect; end
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(*_arg0); end
end

module RSpec::Rails::Matchers::RoutingMatchers
  extend ::RSpec::Matchers::DSL

  def be_routable; end
  def route_to(*expected); end
end

class RSpec::Rails::Matchers::RoutingMatchers::BeRoutableMatcher < ::RSpec::Rails::Matchers::BaseMatcher
  def initialize(scope); end

  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(path); end
end

module RSpec::Rails::Matchers::RoutingMatchers::RouteHelpers
  def delete(path); end
  def get(path); end
  def head(path); end
  def options(path); end
  def patch(path); end
  def post(path); end
  def put(path); end
end

class RSpec::Rails::Matchers::RoutingMatchers::RouteToMatcher < ::RSpec::Rails::Matchers::BaseMatcher
  def initialize(scope, *expected); end

  def description; end
  def failure_message; end
  def failure_message_when_negated; end
  def matches?(verb_to_path_map); end
end

module RSpec::Rails::MinitestAssertionAdapter
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods

  def assertion_delegator; end
end

class RSpec::Rails::MinitestAssertionAdapter::AssertionDelegator
  include ::Minitest::Assertions
  include ::RSpec::Rails::MinitestCounters
end

module RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  def assertion_method_names; end
  def define_assertion_delegators; end
end

module RSpec::Rails::MinitestCounters
  def assertions; end
  def assertions=(_arg0); end
end

module RSpec::Rails::MinitestLifecycleAdapter
  extend ::ActiveSupport::Concern

  def after_setup; end
  def after_teardown; end
  def before_setup; end
  def before_teardown; end
end

module RSpec::Rails::ModelExampleGroup
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures
  include ::RSpec::Rails::FixtureSupport
  include ::RSpec::Rails::RailsExampleGroup

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
end

module RSpec::Rails::RailsExampleGroup
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures
  include ::RSpec::Rails::FixtureSupport

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
end

class RSpec::Rails::Railtie < ::Rails::Railtie
  private

  def config_default_preview_path(options); end
  def config_preview_path?(options); end
  def setup_preview_path(app); end
  def supports_action_mailer_previews?(config); end
end

module RSpec::Rails::RequestExampleGroup
  include ::Rails::Dom::Testing::Assertions::DomAssertions
  include ::Rails::Dom::Testing::Assertions::SelectorAssertions::CountDescribable
  include ::Rails::Dom::Testing::Assertions::SelectorAssertions
  include ::Rails::Dom::Testing::Assertions
  include ::ActionDispatch::Assertions::ResponseAssertions
  include ::ActionDispatch::Assertions::RoutingAssertions
  include ::ActionDispatch::Assertions
  include ::ActionDispatch::Integration::Runner
  include ::RSpec::Rails::Matchers::RedirectTo
  include ::RSpec::Rails::Matchers::RenderTemplate
  include ::ActionController::TemplateAssertions
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures
  include ::RSpec::Rails::FixtureSupport
  include ::RSpec::Rails::RailsExampleGroup
  include ::Rails::Dom::Testing::Assertions
  include ::ActionDispatch::Assertions
  include ::ActionDispatch::Routing::UrlFor
  include ::ActionDispatch::IntegrationTest::UrlOptions
  include ::ActionDispatch::IntegrationTest::Behavior

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
  mixes_in_class_methods ::ActionDispatch::IntegrationTest::Behavior::ClassMethods

  def app; end
end

module RSpec::Rails::RoutingAssertionDelegator
  def assert_generates(*args, &block); end
  def assert_recognizes(*args, &block); end
  def assert_routing(*args, &block); end
  def assertion_instance; end
  def build_assertion_instance; end
  def setup(*args, &block); end
  def with_routing(*args, &block); end
end

module RSpec::Rails::RoutingExampleGroup
  include ::RSpec::Rails::Matchers::RoutingMatchers
  include ::RSpec::Rails::Matchers::RoutingMatchers::RouteHelpers
  include ::RSpec::Rails::RoutingAssertionDelegator
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures
  include ::RSpec::Rails::FixtureSupport
  include ::RSpec::Rails::RailsExampleGroup

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::RoutingExampleGroup::ClassMethods

  def routes; end
  def routes=(routes); end

  private

  def method_missing(m, *args, &block); end
end

module RSpec::Rails::RoutingExampleGroup::ClassMethods
  def routes; end
end

module RSpec::Rails::SetupAndTeardownAdapter
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods

  def initialize(*args); end

  def method_name; end
end

module RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  def setup(*methods, &block); end
  def teardown(*methods, &block); end
end

module RSpec::Rails::SystemExampleGroup
  include ::RSpec::Rails::Matchers::RedirectTo
  include ::RSpec::Rails::Matchers::RenderTemplate
  include ::Rails::Dom::Testing::Assertions::DomAssertions
  include ::Rails::Dom::Testing::Assertions::SelectorAssertions::CountDescribable
  include ::Rails::Dom::Testing::Assertions::SelectorAssertions
  include ::Rails::Dom::Testing::Assertions
  include ::ActionDispatch::Assertions::ResponseAssertions
  include ::ActionDispatch::Assertions::RoutingAssertions
  include ::ActionDispatch::Assertions
  include ::ActionDispatch::Integration::Runner
  include ::ActionController::TemplateAssertions
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures
  include ::RSpec::Rails::FixtureSupport
  include ::RSpec::Rails::RailsExampleGroup
  include ::Rails::Dom::Testing::Assertions
  include ::ActionDispatch::Assertions
  include ::ActionDispatch::SystemTesting::TestHelpers::SetupAndTeardown
  include ::ActionDispatch::SystemTesting::TestHelpers::ScreenshotHelper
  include ::RSpec::Rails::SystemExampleGroup::BlowAwayTeardownHooks

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods

  def app; end
  def method_name; end
  def passed?; end
end

module RSpec::Rails::SystemExampleGroup::BlowAwayTeardownHooks
  def after_teardown; end
  def before_teardown; end
end

RSpec::Rails::SystemExampleGroup::CHARS_TO_TRANSLATE = T.let(T.unsafe(nil), Array)
RSpec::Rails::TestUnitAssertionAdapter = RSpec::Rails::MinitestAssertionAdapter

module RSpec::Rails::ViewAssigns
  def _assigns; end
  def assign(key, value); end
  def view_assigns; end

  private

  def _encapsulated_assigns; end
end

module RSpec::Rails::ViewExampleGroup
  include ::RSpec::Rails::ViewAssigns
  include ::RSpec::Rails::Matchers::RenderTemplate
  extend ::ActiveSupport::Concern
  include ::RSpec::Rails::SetupAndTeardownAdapter
  include ::RSpec::Rails::MinitestLifecycleAdapter
  include ::RSpec::Rails::MinitestAssertionAdapter
  include ::ActiveRecord::TestFixtures
  include ::RSpec::Rails::FixtureSupport::Fixtures
  include ::RSpec::Rails::FixtureSupport
  include ::RSpec::Rails::RailsExampleGroup
  include ::Rails::Dom::Testing::Assertions
  include ::ActionDispatch::Assertions
  include ::AbstractController::Helpers
  include ::ActionView::Helpers::TagHelper
  include ::ActionView::Helpers::AssetTagHelper
  include ::ActionView::Helpers::UrlHelper
  include ::ActionView::Helpers::SanitizeHelper
  include ::ActionView::Helpers::TextHelper
  include ::ActionView::Helpers::FormTagHelper
  include ::ActionView::Helpers::FormHelper
  include ::ActionView::Helpers::TranslationHelper
  include ::ActionView::Helpers
  include ::ActiveSupport::Testing::ConstantLookup
  include ::ActionView::TestCase::Behavior
  include ::ActionView::RoutingUrlFor
  include ::ActionDispatch::Routing::UrlFor
  include ::ActionDispatch::Routing::RouteSet::MountedHelpers
  include ::RSpec::Rails::ViewExampleGroup::ExampleMethods

  mixes_in_class_methods ::RSpec::Rails::SetupAndTeardownAdapter::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::MinitestAssertionAdapter::ClassMethods
  mixes_in_class_methods ::ActiveRecord::TestFixtures::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::FixtureSupport::Fixtures::ClassMethods
  mixes_in_class_methods ::AbstractController::Helpers::ClassMethods
  mixes_in_class_methods ::ActionView::Helpers::UrlHelper::ClassMethods
  mixes_in_class_methods ::ActionView::Helpers::SanitizeHelper::ClassMethods
  mixes_in_class_methods ::ActiveSupport::Testing::ConstantLookup::ClassMethods
  mixes_in_class_methods ::ActionView::TestCase::Behavior::ClassMethods
  mixes_in_class_methods ::RSpec::Rails::ViewExampleGroup::ClassMethods
end

module RSpec::Rails::ViewExampleGroup::ClassMethods
  def _default_helper; end
  def _default_helpers; end
end

module RSpec::Rails::ViewExampleGroup::ExampleMethods
  extend ::ActiveSupport::Concern
  include ::ActionDispatch::Routing::UrlFor
  include ::ActionDispatch::Routing::RouteSet::MountedHelpers

  def params; end
  def render(options = T.unsafe(nil), local_assigns = T.unsafe(nil), &block); end
  def response; end
  def stub_template(hash); end
  def template; end
  def view; end

  private

  def _controller_path; end
  def _default_render_options; end
  def _include_controller_helpers; end
  def _inferred_action; end
  def _path_parts; end
end

module RSpec::Rails::ViewExampleGroup::StubResolverCache
  class << self
    def resolver_for(hash); end
  end
end

class RSpec::Rails::ViewPathBuilder
  def initialize(route_set); end

  def path_for(path_params); end
end

module RSpec::Rails::ViewRendering
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::RSpec::Rails::ViewRendering::ClassMethods

  def controller; end
  def render_views?; end

  private

  def controller=(_arg0); end
end

module RSpec::Rails::ViewRendering::ClassMethods
  def render_views(true_or_false = T.unsafe(nil)); end
  def render_views?; end
end

class RSpec::Rails::ViewRendering::EmptyTemplateHandler
  class << self
    def call(_template, _source = T.unsafe(nil)); end
  end
end

class RSpec::Rails::ViewRendering::EmptyTemplateResolver
  class << self
    def build(path); end
    def nullify_template_rendering(templates); end
    def template_format(template); end
  end
end

class RSpec::Rails::ViewRendering::EmptyTemplateResolver::FileSystemResolver < ::ActionView::FileSystemResolver
  private

  def find_templates(*args); end
end

class RSpec::Rails::ViewRendering::EmptyTemplateResolver::ResolverDecorator
  def initialize(resolver); end

  def method_missing(name, *args, &block); end

  private

  def nullify_templates(collection); end
end

module RSpec::Rails::ViewRendering::EmptyTemplates
  def append_view_path(new_path); end
  def prepend_view_path(new_path); end

  private

  def _path_decorator(*paths); end
end

RSpec::Rails::ViewRendering::RESOLVER_CACHE = T.let(T.unsafe(nil), Hash)

module RSpec::Rails::ViewSpecMethods
  private

  def add_to(klass); end
  def remove_from(klass); end

  class << self
    def add_to(klass); end
    def remove_from(klass); end
  end
end

RSpec::SharedContext = RSpec::Core::SharedContext

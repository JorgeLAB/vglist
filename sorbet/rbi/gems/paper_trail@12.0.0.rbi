# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `paper_trail` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: strict

module PaperTrail
  extend(::PaperTrail::Cleaner)

  class << self
    def config; end
    def configure; end
    def enabled=(value); end
    def enabled?; end
    def gem_version; end
    def request(options = T.unsafe(nil), &block); end
    def serializer; end
    def serializer=(value); end
    def timestamp_field=(_field_name); end
    def version; end
  end
end

module PaperTrail::Cleaner
  def clean_versions!(options = T.unsafe(nil)); end

  private

  def gather_versions(item_id = T.unsafe(nil), date = T.unsafe(nil)); end
  def group_versions_by_date(versions); end
end

module PaperTrail::Compatibility
  class << self
    def check_activerecord(ar_version); end
  end
end

PaperTrail::Compatibility::ACTIVERECORD_GTE = T.let(T.unsafe(nil), String)

PaperTrail::Compatibility::ACTIVERECORD_LT = T.let(T.unsafe(nil), String)

PaperTrail::Compatibility::E_INCOMPATIBLE_AR = T.let(T.unsafe(nil), String)

class PaperTrail::Config
  include(::Singleton)
  extend(::Singleton::SingletonClassMethods)

  def initialize; end

  def association_reify_error_behaviour; end
  def association_reify_error_behaviour=(_arg0); end
  def enabled; end
  def enabled=(enable); end
  def has_paper_trail_defaults; end
  def has_paper_trail_defaults=(_arg0); end
  def object_changes_adapter; end
  def object_changes_adapter=(_arg0); end
  def serializer; end
  def serializer=(_arg0); end
  def version_limit; end
  def version_limit=(_arg0); end
end

PaperTrail::E_TIMESTAMP_FIELD_CONFIG = T.let(T.unsafe(nil), String)

class PaperTrail::Railtie < ::Rails::Railtie
end

class PaperTrail::RecordHistory
  def initialize(versions, version_class); end

  def index(version); end

  private

  def primary_key; end
  def sequence; end
  def table; end
end

module PaperTrail::Request
  class << self
    def controller_info; end
    def controller_info=(value); end
    def disable_model(model_class); end
    def enable_model(model_class); end
    def enabled=(value); end
    def enabled?; end
    def enabled_for_model(model, value); end
    def enabled_for_model?(model); end
    def merge(options); end
    def set(options); end
    def to_h; end
    def whodunnit; end
    def whodunnit=(value); end
    def with(options); end

    private

    def store; end
    def validate_public_options(options); end
  end
end

class PaperTrail::Request::InvalidOption < ::RuntimeError
end

module PaperTrail::Serializers
end

module PaperTrail::Serializers::JSON
  extend(::PaperTrail::Serializers::JSON)

  def dump(object); end
  def load(string); end
  def where_object_changes_condition(*_arg0); end
  def where_object_changes_from_condition(*_arg0); end
  def where_object_condition(arel_field, field, value); end
end

module PaperTrail::Serializers::YAML
  extend(::PaperTrail::Serializers::YAML)

  def dump(object); end
  def load(string); end
  def where_object_changes_condition(*_arg0); end
  def where_object_changes_from_condition(*_arg0); end
  def where_object_condition(arel_field, field, value); end
end

module PaperTrail::VERSION
  class << self
    def to_s; end
  end
end

PaperTrail::VERSION::MAJOR = T.let(T.unsafe(nil), Integer)

PaperTrail::VERSION::MINOR = T.let(T.unsafe(nil), Integer)

PaperTrail::VERSION::STRING = T.let(T.unsafe(nil), String)

PaperTrail::VERSION::TINY = T.let(T.unsafe(nil), Integer)
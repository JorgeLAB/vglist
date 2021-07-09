# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `tapioca` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

class String
  include ::Comparable
  include ::JSON::Ext::Generator::GeneratorMethods::String
  include ::Colorize::InstanceMethods
  include ::MessagePack::CoreExt
  extend ::JSON::Ext::Generator::GeneratorMethods::String::Extend
  extend ::Colorize::ClassMethods
end

String::BLANK_RE = T.let(T.unsafe(nil), Regexp)
String::ENCODED_BLANKS = T.let(T.unsafe(nil), Concurrent::Map)

module T::Generic::TypeStoragePatch
  def [](*types); end
  def type_member(variance = T.unsafe(nil), fixed: T.unsafe(nil), lower: T.unsafe(nil), upper: T.unsafe(nil)); end
  def type_template(variance = T.unsafe(nil), fixed: T.unsafe(nil), lower: T.unsafe(nil), upper: T.unsafe(nil)); end
end

module T::Types::Simple::GenericNamePatch
  def name; end
end

module T::Types::Simple::NamePatch
  def name; end
end

module Tapioca
  class << self
    def silence_warnings(&blk); end
  end
end

module Tapioca::Cli; end

class Tapioca::Cli::Main < ::Thor
  include ::Thor::Actions
  extend ::Thor::Actions::ClassMethods

  def __print_version; end
  def dsl(*constants); end
  def generate(*gems); end
  def init; end
  def require; end
  def sync; end
  def todo; end

  private

  def create_config; end
  def create_post_require; end
  def generate_binstub; end
  def generator; end

  class << self
    def exit_on_failure?; end
  end
end

module Tapioca::Compilers; end
module Tapioca::Compilers::Dsl; end

class Tapioca::Compilers::Dsl::Base
  abstract!

  sig { void }
  def initialize; end

  sig { abstract.type_parameters(:T).params(root: Parlour::RbiGenerator::Namespace, constant: T.type_parameter(:T)).void }
  def decorate(root, constant); end

  sig { abstract.returns(T::Enumerable[Module]) }
  def gather_constants; end

  sig { params(constant: Module).returns(T::Boolean) }
  def handles?(constant); end

  sig { returns(T::Set[Module]) }
  def processable_constants; end

  private

  sig { params(method_def: T.any(Method, UnboundMethod)).returns(T::Array[Parlour::RbiGenerator::Parameter]) }
  def compile_method_parameters_to_parlour(method_def); end

  sig { params(method_def: T.any(Method, UnboundMethod)).returns(T.nilable(String)) }
  def compile_method_return_type_to_parlour(method_def); end

  sig { params(namespace: Parlour::RbiGenerator::Namespace, name: String, options: T::Hash[T.untyped, T.untyped]).void }
  def create_method(namespace, name, options = T.unsafe(nil)); end

  sig { params(namespace: Parlour::RbiGenerator::Namespace, method_def: T.any(Method, UnboundMethod), class_method: T::Boolean).void }
  def create_method_from_def(namespace, method_def, class_method: T.unsafe(nil)); end

  sig { params(method_def: T.any(Method, UnboundMethod), signature: T.untyped).returns(T::Array[String]) }
  def parameters_types_from_signature(method_def, signature); end

  sig { params(name: String).returns(T::Boolean) }
  def valid_method_name?(name); end
end

Tapioca::Compilers::Dsl::Base::SPECIAL_METHOD_NAMES = T.let(T.unsafe(nil), Array)

class Tapioca::Compilers::DslCompiler
  sig { params(requested_constants: T::Array[Module], requested_generators: T::Array[String], error_handler: T.nilable(T.proc.params(error: String).void)).void }
  def initialize(requested_constants:, requested_generators: T.unsafe(nil), error_handler: T.unsafe(nil)); end

  sig { returns(T.proc.params(error: String).void) }
  def error_handler; end

  sig { returns(T::Enumerable[Tapioca::Compilers::Dsl::Base]) }
  def generators; end

  sig { returns(T::Array[Module]) }
  def requested_constants; end

  sig { params(blk: T.proc.params(constant: Module, rbi: String).void).void }
  def run(&blk); end

  private

  sig { params(requested_constants: T::Array[Module]).returns(T::Set[Module]) }
  def gather_constants(requested_constants); end

  sig { params(requested_generators: T::Array[String]).returns(T::Enumerable[Tapioca::Compilers::Dsl::Base]) }
  def gather_generators(requested_generators); end

  sig { params(requested_generators: T::Array[String]).returns(T.proc.params(klass: Class).returns(T::Boolean)) }
  def generator_filter(requested_generators); end

  sig { params(constant: Module).returns(T.nilable(String)) }
  def rbi_for_constant(constant); end

  sig { params(error: String).returns(T.noreturn) }
  def report_error(error); end

  sig { params(parlour: Parlour::RbiGenerator).void }
  def resolve_conflicts(parlour); end
end

class Tapioca::Compilers::RequiresCompiler
  sig { params(sorbet_path: String).void }
  def initialize(sorbet_path); end

  sig { returns(String) }
  def compile; end

  private

  sig { params(config: Spoom::Sorbet::Config).returns(T::Array[String]) }
  def collect_files(config); end

  sig { params(file_path: String).returns(T::Enumerable[String]) }
  def collect_requires(file_path); end

  sig { params(config: Spoom::Sorbet::Config, file_path: Pathname).returns(T::Boolean) }
  def file_ignored_by_sorbet?(config, file_path); end

  sig { params(files: T::Enumerable[String], name: String).returns(T::Boolean) }
  def name_in_project?(files, name); end

  sig { params(path: Pathname).returns(T::Array[String]) }
  def path_parts(path); end
end

module Tapioca::Compilers::Sorbet
  class << self
    sig { params(args: String).returns(String) }
    def run(*args); end

    sig { returns(String) }
    def sorbet_path; end
  end
end

Tapioca::Compilers::Sorbet::EXE_PATH_ENV_VAR = T.let(T.unsafe(nil), String)
Tapioca::Compilers::Sorbet::SORBET = T.let(T.unsafe(nil), Pathname)
module Tapioca::Compilers::SymbolTable; end

class Tapioca::Compilers::SymbolTable::SymbolGenerator
  sig { params(gem: Tapioca::Gemfile::Gem, indent: Integer).void }
  def initialize(gem, indent = T.unsafe(nil)); end

  def gem; end

  sig { returns(String) }
  def generate; end

  def indent; end

  private

  sig { params(name: String).void }
  def add_to_alias_namespace(name); end

  def add_to_symbol_queue(name); end

  sig { params(name: String).returns(T::Boolean) }
  def alias_namespaced?(name); end

  sig { params(constant: Module).returns(T::Array[Module]) }
  def ancestors_of(constant); end

  sig { params(constant: Module, other: BasicObject).returns(T::Boolean) }
  def are_equal?(constant, other); end

  sig { params(constant: BasicObject).returns(Class) }
  def class_of(constant); end

  sig { params(tree: Tapioca::RBI::Tree, name: T.nilable(String), constant: BasicObject).void }
  def compile(tree, name, constant); end

  sig { params(tree: Tapioca::RBI::Tree, name: String, constant: Module).void }
  def compile_alias(tree, name, constant); end

  sig { params(tree: Tapioca::RBI::Tree, name: String, constant: Module).void }
  def compile_body(tree, name, constant); end

  sig { params(tree: Tapioca::RBI::Tree, name: String, constant: BasicObject).void }
  def compile_constant(tree, name, constant); end

  sig { params(tree: Tapioca::RBI::Tree, module_name: String, mod: Module, for_visibility: T::Array[Symbol]).void }
  def compile_directly_owned_methods(tree, module_name, mod, for_visibility = T.unsafe(nil)); end

  sig { params(tree: Tapioca::RBI::Tree, constant: Module).void }
  def compile_enums(tree, constant); end

  sig { params(tree: Tapioca::RBI::Tree, symbol_name: String, constant: Module, method: T.nilable(UnboundMethod), visibility: Tapioca::RBI::Visibility).void }
  def compile_method(tree, symbol_name, constant, method, visibility = T.unsafe(nil)); end

  sig { params(tree: Tapioca::RBI::Tree, name: String, constant: Module).void }
  def compile_methods(tree, name, constant); end

  sig { params(tree: Tapioca::RBI::Tree, constant: Module).void }
  def compile_mixes_in_class_methods(tree, constant); end

  sig { params(tree: Tapioca::RBI::Tree, constant: Module).void }
  def compile_mixins(tree, constant); end

  sig { params(tree: Tapioca::RBI::Tree, name: String, constant: Module).void }
  def compile_module(tree, name, constant); end

  sig { params(tree: Tapioca::RBI::Tree, constant: Module).void }
  def compile_module_helpers(tree, constant); end

  sig { params(tree: Tapioca::RBI::Tree, name: String, value: BasicObject).void }
  def compile_object(tree, name, value); end

  sig { params(tree: Tapioca::RBI::Tree, constant: Module).void }
  def compile_props(tree, constant); end

  sig { params(signature: T.untyped, parameters: T::Array[[Symbol, String]]).returns(Tapioca::RBI::Sig) }
  def compile_signature(signature, parameters); end

  sig { params(tree: Tapioca::RBI::Tree, name: String, constant: Module).void }
  def compile_subconstants(tree, name, constant); end

  sig { params(constant: Class).returns(T.nilable(String)) }
  def compile_superclass(constant); end

  sig { params(tree: Tapioca::RBI::Tree, constant: Module).void }
  def compile_type_variable_declarations(tree, constant); end

  sig { params(tree: Tapioca::RBI::Tree, constant: Module).void }
  def compile_type_variables(tree, constant); end

  sig { params(constant: Module).returns(T::Array[Symbol]) }
  def constants_of(constant); end

  sig { params(constant: Module, strict: T::Boolean).returns(T::Boolean) }
  def defined_in_gem?(constant, strict: T.unsafe(nil)); end

  sig { params(symbols: T::Set[String]).returns(T::Set[String]) }
  def engine_symbols(symbols); end

  sig { params(tree: Tapioca::RBI::Tree, symbol: String).void }
  def generate_from_symbol(tree, symbol); end

  sig { params(constant: T.all(Module, T::Generic)).returns(String) }
  def generic_name_of(constant); end

  sig { params(constant: Module).returns(T::Array[String]) }
  def get_file_candidates(constant); end

  sig { params(constant: Module).returns(T::Array[Module]) }
  def inherited_ancestors_of(constant); end

  def initialize_method_for(constant); end

  sig { params(constant: Module).returns(T::Array[Module]) }
  def interesting_ancestors_of(constant); end

  sig { params(name: String).void }
  def mark_seen(name); end

  sig { params(method: UnboundMethod).returns(T::Boolean) }
  def method_in_gem?(method); end

  sig { params(mod: Module).returns(T::Hash[Symbol, T::Array[Symbol]]) }
  def method_names_by_visibility(mod); end

  sig { params(constant: Module).returns(T.nilable(String)) }
  def name_of(constant); end

  sig { params(constant: Module).returns(T.nilable(String)) }
  def name_of_proxy_target(constant); end

  sig { params(object: BasicObject).returns(Integer) }
  def object_id_of(object); end

  sig { params(constant: Module).returns(T.nilable(String)) }
  def qualified_name_of(constant); end

  sig { params(constant: Module).returns(T.nilable(String)) }
  def raw_name_of(constant); end

  sig { params(symbol: String, inherit: T::Boolean, namespace: Module).returns(BasicObject) }
  def resolve_constant(symbol, inherit: T.unsafe(nil), namespace: T.unsafe(nil)); end

  sig { params(sig_string: String).returns(String) }
  def sanitize_signature_types(sig_string); end

  sig { params(name: String).returns(T::Boolean) }
  def seen?(name); end

  sig { params(method: T.any(Method, UnboundMethod)).returns(T.untyped) }
  def signature_of(method); end

  sig { params(constant: Module).returns(Class) }
  def singleton_class_of(constant); end

  sig { params(constant: Module, method_name: String).returns(T::Boolean) }
  def struct_method?(constant, method_name); end

  sig { params(constant: Class).returns(T.nilable(Class)) }
  def superclass_of(constant); end

  sig { params(symbol_name: String).returns(T::Boolean) }
  def symbol_ignored?(symbol_name); end

  sig { returns(T::Set[String]) }
  def symbols; end

  sig { params(constant: T::Types::Base).returns(String) }
  def type_of(constant); end

  sig { params(name: String).returns(T::Boolean) }
  def valid_method_name?(name); end
end

Tapioca::Compilers::SymbolTable::SymbolGenerator::IGNORED_SYMBOLS = T.let(T.unsafe(nil), Array)
Tapioca::Compilers::SymbolTable::SymbolGenerator::SPECIAL_METHOD_NAMES = T.let(T.unsafe(nil), Array)
Tapioca::Compilers::SymbolTable::SymbolGenerator::TYPE_PARAMETER_MATCHER = T.let(T.unsafe(nil), Regexp)

module Tapioca::Compilers::SymbolTable::SymbolLoader
  class << self
    def ignore_symbol?(symbol); end

    sig { params(paths: T::Array[Pathname]).returns(T::Set[String]) }
    def list_from_paths(paths); end

    private

    def ignored_symbols; end

    sig { params(paths: T::Array[String]).returns(T::Set[String]) }
    def load_symbols(paths); end

    def symbol_table_json_from(input, table_type: T.unsafe(nil)); end
  end
end

class Tapioca::Compilers::SymbolTable::SymbolLoader::SymbolTableParser
  class << self
    def parse(object, parents = T.unsafe(nil)); end
  end
end

class Tapioca::Compilers::SymbolTableCompiler
  sig { params(gem: Tapioca::Gemfile::Gem, indent: Integer).returns(String) }
  def compile(gem, indent = T.unsafe(nil)); end
end

class Tapioca::Compilers::TodosCompiler
  sig { returns(String) }
  def compile; end

  private

  sig { returns(String) }
  def list_todos; end
end

class Tapioca::Config < ::T::Struct
  const :exclude, T::Array[String]
  const :generators, T::Array[String]
  const :outdir, String
  const :postrequire, String
  const :prerequire, T.nilable(String)
  const :todos_path, String
  const :typed_overrides, T::Hash[String, String]

  sig { returns(Pathname) }
  def outpath; end

  class << self
    def inherited(s); end
  end
end

Tapioca::Config::DEFAULT_COMMAND = T.let(T.unsafe(nil), String)
Tapioca::Config::DEFAULT_DSLDIR = T.let(T.unsafe(nil), String)
Tapioca::Config::DEFAULT_GEMDIR = T.let(T.unsafe(nil), String)
Tapioca::Config::DEFAULT_OVERRIDES = T.let(T.unsafe(nil), Hash)
Tapioca::Config::DEFAULT_POSTREQUIRE = T.let(T.unsafe(nil), String)
Tapioca::Config::DEFAULT_RBIDIR = T.let(T.unsafe(nil), String)
Tapioca::Config::DEFAULT_TODOSPATH = T.let(T.unsafe(nil), String)
Tapioca::Config::SORBET_CONFIG = T.let(T.unsafe(nil), String)
Tapioca::Config::SORBET_PATH = T.let(T.unsafe(nil), String)
Tapioca::Config::TAPIOCA_CONFIG = T.let(T.unsafe(nil), String)
Tapioca::Config::TAPIOCA_PATH = T.let(T.unsafe(nil), String)

class Tapioca::ConfigBuilder
  class << self
    sig { params(command: Symbol, options: T::Hash[String, T.untyped]).returns(Tapioca::Config) }
    def from_options(command, options); end

    private

    sig { returns(T::Hash[String, T.untyped]) }
    def config_options; end

    sig { params(command: Symbol).returns(T::Hash[String, T.untyped]) }
    def default_options(command); end

    sig { params(options: T::Hash[String, T.untyped]).returns(T::Hash[String, T.untyped]) }
    def merge_options(*options); end
  end
end

Tapioca::ConfigBuilder::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)

module Tapioca::ConstantLocator
  private

  def files_for(klass); end

  class << self
    def files_for(klass); end
  end
end

Tapioca::ConstantLocator::NAME = T.let(T.unsafe(nil), UnboundMethod)
class Tapioca::Error < ::StandardError; end

class Tapioca::Gemfile
  sig { void }
  def initialize; end

  sig { returns(Bundler::Definition) }
  def definition; end

  sig { returns(T::Array[Tapioca::Gemfile::Gem]) }
  def dependencies; end

  sig { params(gem_name: String).returns(T.nilable(Tapioca::Gemfile::Gem)) }
  def gem(gem_name); end

  sig { returns(T::Array[String]) }
  def missing_specs; end

  sig { void }
  def require; end

  private

  sig { returns(String) }
  def dir; end

  sig { returns(File) }
  def gemfile; end

  sig { returns(T::Array[Symbol]) }
  def groups; end

  sig { returns([T::Array[Tapioca::Gemfile::Gem], T::Array[String]]) }
  def load_dependencies; end

  def lockfile; end

  sig { returns(Bundler::Runtime) }
  def runtime; end
end

class Tapioca::Gemfile::Gem
  sig { params(spec: T.any(Gem::Specification, T.all(Bundler::RemoteSpecification, Bundler::StubSpecification))).void }
  def initialize(spec); end

  sig { params(path: String).returns(T::Boolean) }
  def contains_path?(path); end

  sig { returns(T::Array[Pathname]) }
  def files; end

  sig { returns(String) }
  def full_gem_path; end

  sig { params(gemfile_dir: String).returns(T::Boolean) }
  def ignore?(gemfile_dir); end

  sig { returns(String) }
  def name; end

  sig { returns(String) }
  def rbi_file_name; end

  def version; end

  private

  sig { returns(T::Boolean) }
  def default_gem?; end

  sig { returns(T::Boolean) }
  def gem_ignored?; end

  sig { params(gemfile_dir: String).returns(T::Boolean) }
  def gem_in_app_dir?(gemfile_dir); end

  sig { returns(T::Boolean) }
  def gem_in_bundle_path?; end

  sig { params(path: String).returns(T::Boolean) }
  def has_parent_gemspec?(path); end

  sig { returns(Pathname) }
  def ruby_lib_dir; end

  sig { params(path: T.any(Pathname, String)).returns(String) }
  def to_realpath(path); end

  sig { returns(String) }
  def version_string; end
end

Tapioca::Gemfile::Gem::IGNORED_GEMS = T.let(T.unsafe(nil), Array)
Tapioca::Gemfile::Spec = T.type_alias { T.any(Gem::Specification, T.all(Bundler::RemoteSpecification, Bundler::StubSpecification)) }

class Tapioca::Generator < ::Thor::Shell::Color
  sig { params(config: Tapioca::Config).void }
  def initialize(config); end

  sig { params(requested_constants: T::Array[String], should_verify: T::Boolean, quiet: T::Boolean).void }
  def build_dsl(requested_constants, should_verify: T.unsafe(nil), quiet: T.unsafe(nil)); end

  sig { params(gem_names: T::Array[String]).void }
  def build_gem_rbis(gem_names); end

  sig { void }
  def build_requires; end

  sig { void }
  def build_todos; end

  sig { returns(Tapioca::Config) }
  def config; end

  sig { void }
  def sync_rbis_with_gemfile; end

  private

  sig { params(filename: Pathname).void }
  def add(filename); end

  sig { returns(T::Array[String]) }
  def added_rbis; end

  sig { params(cause: Symbol, files: T::Array[String]).returns(String) }
  def build_error_for_files(cause, files); end

  sig { returns(Tapioca::Gemfile) }
  def bundle; end

  sig { params(constant_name: String, contents: String, outpath: Pathname, quiet: T::Boolean).returns(T.nilable(Pathname)) }
  def compile_dsl_rbi(constant_name, contents, outpath: T.unsafe(nil), quiet: T.unsafe(nil)); end

  sig { params(gem: Tapioca::Gemfile::Gem).void }
  def compile_gem_rbi(gem); end

  sig { returns(Tapioca::Compilers::SymbolTableCompiler) }
  def compiler; end

  sig { params(constant_names: T::Array[String]).returns(T::Array[Module]) }
  def constantize(constant_names); end

  sig { params(constant_name: String).returns(Pathname) }
  def dsl_rbi_filename(constant_name); end

  sig { params(gem_name: String).returns(Pathname) }
  def existing_rbi(gem_name); end

  sig { params(requested_constants: T::Array[String], path: Pathname).returns(T::Set[Pathname]) }
  def existing_rbi_filenames(requested_constants, path: T.unsafe(nil)); end

  sig { returns(T::Hash[String, String]) }
  def existing_rbis; end

  sig { params(gem_name: String).returns(Pathname) }
  def expected_rbi(gem_name); end

  sig { returns(T::Hash[String, String]) }
  def expected_rbis; end

  sig { params(file: String, error: LoadError).void }
  def explain_failed_require(file, error); end

  sig { params(gem_name: String).returns(T::Boolean) }
  def gem_rbi_exists?(gem_name); end

  sig { params(gem_name: String, version: String).returns(Pathname) }
  def gem_rbi_filename(gem_name, version); end

  sig { params(gem_names: T::Array[String]).returns(T::Array[Tapioca::Gemfile::Gem]) }
  def gems_to_generate(gem_names); end

  sig { params(eager_load: T::Boolean).void }
  def load_application(eager_load:); end

  sig { void }
  def load_dsl_generators; end

  sig { returns(Tapioca::Loader) }
  def loader; end

  sig { params(old_filename: Pathname, new_filename: Pathname).void }
  def move(old_filename, new_filename); end

  sig { void }
  def perform_additions; end

  sig { params(dir: Pathname).void }
  def perform_dsl_verification(dir); end

  sig { void }
  def perform_removals; end

  sig { params(files: T::Set[Pathname]).void }
  def purge_stale_dsl_rbi_files(files); end

  sig { params(path: Pathname).returns(T::Array[Pathname]) }
  def rbi_files_in(path); end

  sig { params(command: String, reason: T.nilable(String), strictness: T.nilable(String)).returns(String) }
  def rbi_header(command, reason: T.unsafe(nil), strictness: T.unsafe(nil)); end

  sig { params(filename: Pathname).void }
  def remove(filename); end

  sig { returns(T::Array[String]) }
  def removed_rbis; end

  sig { void }
  def require_gem_file; end

  sig { params(message: String, color: T.any(Symbol, T::Array[Symbol])).void }
  def say_error(message = T.unsafe(nil), *color); end

  sig { params(tmp_dir: Pathname).returns(T::Hash[String, Symbol]) }
  def verify_dsl_rbi(tmp_dir:); end
end

Tapioca::Generator::EMPTY_RBI_COMMENT = T.let(T.unsafe(nil), String)

module Tapioca::GenericTypeRegistry
  class << self
    sig { params(constant: Module).returns(T.nilable(T::Hash[Integer, String])) }
    def lookup_type_variables(constant); end

    sig { params(constant: T.untyped, types: T.untyped).returns(Module) }
    def register_type(constant, types); end

    sig { params(constant: T.untyped, type_member: T::Types::TypeVariable, fixed: T.untyped, lower: T.untyped, upper: T.untyped).void }
    def register_type_member(constant, type_member, fixed, lower, upper); end

    sig { params(constant: T.untyped, type_template: T::Types::TypeVariable, fixed: T.untyped, lower: T.untyped, upper: T.untyped).void }
    def register_type_template(constant, type_template, fixed, lower, upper); end

    private

    sig { params(constant: Module, name: String).returns(Module) }
    def create_generic_type(constant, name); end

    sig { params(constant: Class).returns(Class) }
    def create_safe_subclass(constant); end

    sig { params(constant: Module).returns(T::Hash[Integer, String]) }
    def lookup_or_initialize_type_variables(constant); end

    sig { params(constant: Module).returns(T.nilable(String)) }
    def name_of(constant); end

    sig { params(object: BasicObject).returns(Integer) }
    def object_id_of(object); end

    sig { params(constant: T.untyped, type_variable_type: T.enum([:type_member, :type_template]), type_variable: T::Types::TypeVariable, fixed: T.untyped, lower: T.untyped, upper: T.untyped).void }
    def register_type_variable(constant, type_variable_type, type_variable, fixed, lower, upper); end

    sig { params(type_variable_type: Symbol, variance: Symbol, fixed: T.untyped, lower: T.untyped, upper: T.untyped).returns(String) }
    def serialize_type_variable(type_variable_type, variance, fixed, lower, upper); end
  end
end

class Tapioca::Loader
  sig { params(gemfile: Tapioca::Gemfile).void }
  def initialize(gemfile); end

  sig { params(initialize_file: T.nilable(String), require_file: T.nilable(String)).void }
  def load_bundle(initialize_file, require_file); end

  sig { params(environment_load: T::Boolean, eager_load: T::Boolean).void }
  def load_rails(environment_load: T.unsafe(nil), eager_load: T.unsafe(nil)); end

  private

  sig { void }
  def eager_load_rails_app; end

  sig { returns(Tapioca::Gemfile) }
  def gemfile; end

  sig { void }
  def load_rails_engines; end

  sig { void }
  def load_rake; end

  sig { returns(T::Array[T.untyped]) }
  def rails_engines; end

  sig { void }
  def require_bundle; end

  sig { params(file: T.nilable(String)).void }
  def require_helper(file); end

  sig { params(path: String).void }
  def safe_require(path); end

  sig { void }
  def silence_deprecations; end
end

module Tapioca::RBI; end

class Tapioca::RBI::BlockParam < ::Tapioca::RBI::Param
  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end
end

class Tapioca::RBI::Class < ::Tapioca::RBI::Scope
  sig { params(name: String, superclass_name: T.nilable(String)).void }
  def initialize(name, superclass_name: T.unsafe(nil)); end

  sig { returns(String) }
  def name; end

  def name=(_arg0); end

  sig { returns(T.nilable(String)) }
  def superclass_name; end

  def superclass_name=(_arg0); end
end

class Tapioca::RBI::Const < ::Tapioca::RBI::Node
  sig { params(name: String, value: String).void }
  def initialize(name, value); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(String) }
  def name; end

  def value; end
end

class Tapioca::RBI::Extend < ::Tapioca::RBI::Mixin; end

class Tapioca::RBI::Group < ::Tapioca::RBI::Tree
  sig { params(kind: Tapioca::RBI::Group::Kind).void }
  def initialize(kind); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(Tapioca::RBI::Group::Kind) }
  def kind; end
end

class Tapioca::RBI::Group::Kind < ::T::Enum
  enums do
    Mixins = new
    Helpers = new
    TypeMembers = new
    MixesInClassMethods = new
    TStructFields = new
    TEnums = new
    Inits = new
    Methods = new
    Consts = new
  end
end

class Tapioca::RBI::Helper < ::Tapioca::RBI::Node
  sig { params(name: String).void }
  def initialize(name); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(String) }
  def name; end
end

class Tapioca::RBI::Include < ::Tapioca::RBI::Mixin; end

class Tapioca::RBI::KwOptParam < ::Tapioca::RBI::OptParam
  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end
end

class Tapioca::RBI::KwParam < ::Tapioca::RBI::Param
  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end
end

class Tapioca::RBI::KwRestParam < ::Tapioca::RBI::Param
  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end
end

class Tapioca::RBI::Method < ::Tapioca::RBI::Node
  sig { params(name: String, params: T::Array[Tapioca::RBI::Param], is_singleton: T::Boolean, visibility: Tapioca::RBI::Visibility, sigs: T::Array[Tapioca::RBI::Sig]).void }
  def initialize(name, params: T.unsafe(nil), is_singleton: T.unsafe(nil), visibility: T.unsafe(nil), sigs: T.unsafe(nil)); end

  sig { params(param: Tapioca::RBI::Param).void }
  def <<(param); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(T::Boolean) }
  def is_singleton; end

  def is_singleton=(_arg0); end

  sig { returns(String) }
  def name; end

  def name=(_arg0); end

  sig { override.returns(T::Boolean) }
  def oneline?; end

  sig { returns(T::Array[Tapioca::RBI::Param]) }
  def params; end

  sig { returns(T::Array[Tapioca::RBI::Sig]) }
  def sigs; end

  def sigs=(_arg0); end

  sig { returns(Tapioca::RBI::Visibility) }
  def visibility; end

  def visibility=(_arg0); end
end

class Tapioca::RBI::MixesInClassMethods < ::Tapioca::RBI::Mixin; end

class Tapioca::RBI::Mixin < ::Tapioca::RBI::Node
  abstract!

  sig { params(name: String).void }
  def initialize(name); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(String) }
  def name; end
end

class Tapioca::RBI::Module < ::Tapioca::RBI::Scope
  sig { params(name: String).void }
  def initialize(name); end

  sig { returns(String) }
  def name; end

  def name=(_arg0); end
end

class Tapioca::RBI::Node
  abstract!

  sig { void }
  def initialize; end

  sig { abstract.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { void }
  def detach; end

  sig { returns(Tapioca::RBI::Group::Kind) }
  def group_kind; end

  sig { returns(T::Boolean) }
  def oneline?; end

  sig { returns(T.nilable(Tapioca::RBI::Tree)) }
  def parent_tree; end

  def parent_tree=(_arg0); end

  sig { params(out: T.any(IO, StringIO), indent: Integer).void }
  def print(out: T.unsafe(nil), indent: T.unsafe(nil)); end

  sig { params(indent: Integer).returns(String) }
  def string(indent: T.unsafe(nil)); end
end

class Tapioca::RBI::OptParam < ::Tapioca::RBI::Param
  sig { params(name: String, value: String).void }
  def initialize(name, value); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(String) }
  def value; end
end

class Tapioca::RBI::Param < ::Tapioca::RBI::Node
  sig { params(name: String).void }
  def initialize(name); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(String) }
  def name; end
end

class Tapioca::RBI::Printer < ::Tapioca::RBI::Visitor
  sig { params(out: T.any(IO, StringIO), indent: Integer).void }
  def initialize(out: T.unsafe(nil), indent: T.unsafe(nil)); end

  sig { void }
  def dedent; end

  sig { returns(T::Boolean) }
  def in_visibility_group; end

  def in_visibility_group=(_arg0); end

  sig { void }
  def indent; end

  sig { returns(T.nilable(Tapioca::RBI::Node)) }
  def previous_node; end

  sig { params(string: String).void }
  def print(string); end

  sig { params(string: String).void }
  def printl(string); end

  sig { params(string: T.nilable(String)).void }
  def printn(string = T.unsafe(nil)); end

  sig { params(string: T.nilable(String)).void }
  def printt(string = T.unsafe(nil)); end

  sig { override.params(node: T.nilable(Tapioca::RBI::Node)).void }
  def visit(node); end

  sig { override.params(nodes: T::Array[Tapioca::RBI::Node]).void }
  def visit_all(nodes); end
end

class Tapioca::RBI::RestParam < ::Tapioca::RBI::Param
  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end
end

module Tapioca::RBI::Rewriters; end

class Tapioca::RBI::Rewriters::GroupNodes < ::Tapioca::RBI::Visitor
  sig { override.params(node: T.nilable(Tapioca::RBI::Node)).void }
  def visit(node); end
end

class Tapioca::RBI::Rewriters::NestNonPublicMethods < ::Tapioca::RBI::Visitor
  sig { override.params(node: T.nilable(Tapioca::RBI::Node)).void }
  def visit(node); end
end

class Tapioca::RBI::Rewriters::NestSingletonMethods < ::Tapioca::RBI::Visitor
  sig { override.params(node: T.nilable(Tapioca::RBI::Node)).void }
  def visit(node); end
end

class Tapioca::RBI::Rewriters::SortNodes < ::Tapioca::RBI::Visitor
  sig { override.params(node: T.nilable(Tapioca::RBI::Node)).void }
  def visit(node); end

  private

  sig { params(kind: Tapioca::RBI::Group::Kind).returns(Integer) }
  def kind_rank(kind); end

  sig { params(node: Tapioca::RBI::Node).returns(T.nilable(String)) }
  def node_name(node); end

  sig { params(node: Tapioca::RBI::Node).returns(Integer) }
  def node_rank(node); end
end

class Tapioca::RBI::Scope < ::Tapioca::RBI::Tree
  abstract!

  def initialize(*args, &blk); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end
end

class Tapioca::RBI::Sig < ::Tapioca::RBI::Node
  sig { params(params: T::Array[Tapioca::RBI::SigParam], return_type: T.nilable(String), is_abstract: T::Boolean, is_override: T::Boolean, is_overridable: T::Boolean, type_params: T::Array[String]).void }
  def initialize(params: T.unsafe(nil), return_type: T.unsafe(nil), is_abstract: T.unsafe(nil), is_override: T.unsafe(nil), is_overridable: T.unsafe(nil), type_params: T.unsafe(nil)); end

  sig { params(param: Tapioca::RBI::SigParam).void }
  def <<(param); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(T::Boolean) }
  def is_abstract; end

  def is_abstract=(_arg0); end
  def is_overridable; end
  def is_overridable=(_arg0); end
  def is_override; end
  def is_override=(_arg0); end

  sig { returns(T::Array[Tapioca::RBI::SigParam]) }
  def params; end

  sig { returns(T.nilable(String)) }
  def return_type; end

  def return_type=(_arg0); end

  sig { returns(T::Array[String]) }
  def type_params; end
end

class Tapioca::RBI::SigParam < ::Tapioca::RBI::Node
  sig { params(name: String, type: String).void }
  def initialize(name, type); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(String) }
  def name; end

  def type; end
end

class Tapioca::RBI::SingletonClass < ::Tapioca::RBI::Scope
  sig { void }
  def initialize; end
end

class Tapioca::RBI::TEnum < ::Tapioca::RBI::Class
  sig { params(name: String).void }
  def initialize(name); end
end

class Tapioca::RBI::TEnumBlock < ::Tapioca::RBI::Node
  sig { params(names: T::Array[String]).void }
  def initialize(names = T.unsafe(nil)); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(T::Boolean) }
  def empty?; end

  sig { returns(T::Array[String]) }
  def names; end
end

class Tapioca::RBI::TStruct < ::Tapioca::RBI::Class
  sig { params(name: String).void }
  def initialize(name); end
end

class Tapioca::RBI::TStructConst < ::Tapioca::RBI::TStructField; end

class Tapioca::RBI::TStructField < ::Tapioca::RBI::Node
  abstract!

  sig { params(name: String, type: String, default: T.nilable(String)).void }
  def initialize(name, type, default: T.unsafe(nil)); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(T.nilable(String)) }
  def default; end

  def default=(_arg0); end

  sig { returns(String) }
  def name; end

  def name=(_arg0); end
  def type; end
  def type=(_arg0); end
end

class Tapioca::RBI::TStructProp < ::Tapioca::RBI::TStructField; end

class Tapioca::RBI::Tree < ::Tapioca::RBI::Node
  sig { void }
  def initialize; end

  sig { params(node: Tapioca::RBI::Node).void }
  def <<(node); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(T::Boolean) }
  def empty?; end

  sig { void }
  def group_nodes!; end

  sig { void }
  def nest_non_public_methods!; end

  sig { void }
  def nest_singleton_methods!; end

  sig { returns(T::Array[Tapioca::RBI::Node]) }
  def nodes; end

  sig { override.returns(T::Boolean) }
  def oneline?; end

  sig { void }
  def sort_nodes!; end
end

class Tapioca::RBI::TypeMember < ::Tapioca::RBI::Node
  sig { params(name: String, value: String).void }
  def initialize(name, value); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(String) }
  def name; end

  def value; end
end

class Tapioca::RBI::Visibility < ::Tapioca::RBI::Node
  abstract!

  sig { params(visibility: Symbol).void }
  def initialize(visibility); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(T::Boolean) }
  def public?; end

  sig { returns(Symbol) }
  def visibility; end
end

Tapioca::RBI::Visibility::Private = T.let(T.unsafe(nil), Tapioca::RBI::Visibility)
Tapioca::RBI::Visibility::Protected = T.let(T.unsafe(nil), Tapioca::RBI::Visibility)
Tapioca::RBI::Visibility::Public = T.let(T.unsafe(nil), Tapioca::RBI::Visibility)

class Tapioca::RBI::VisibilityGroup < ::Tapioca::RBI::Tree
  sig { params(visibility: Tapioca::RBI::Visibility).void }
  def initialize(visibility); end

  sig { override.params(v: Tapioca::RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(Tapioca::RBI::Visibility) }
  def visibility; end
end

class Tapioca::RBI::Visitor
  abstract!

  def initialize(*args, &blk); end

  sig { abstract.params(node: T.nilable(Tapioca::RBI::Node)).void }
  def visit(node); end

  sig { params(nodes: T::Array[Tapioca::RBI::Node]).void }
  def visit_all(nodes); end
end

Tapioca::VERSION = T.let(T.unsafe(nil), String)
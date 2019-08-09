# This is an autogenerated file for dynamic methods in ActiveRecord::SchemaMigration
# Please rerun rake rails_rbi:models[ActiveRecord::SchemaMigration] to regenerate.

# typed: strong
module ActiveRecord::SchemaMigration::GeneratedAttributeMethods
  extend T::Sig

  sig { returns(String) }
  def version; end

  sig { params(value: String).void }
  def version=(value); end

  sig { returns(T::Boolean) }
  def version?; end
end

class ActiveRecord::SchemaMigration::ActiveRecord_Relation < ActiveRecord::Relation
  include ActiveRecord::SchemaMigration::ModelRelationShared
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: ActiveRecord::SchemaMigration)
end

class ActiveRecord::SchemaMigration::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include ActiveRecord::SchemaMigration::ModelRelationShared
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: ActiveRecord::SchemaMigration)
end

module ActiveRecord::SchemaMigration::ModelRelationShared
  extend T::Sig

  sig { returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def left_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def left_outer_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def merge(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def except(*args, &block); end

  sig { params(num: Integer).returns(ActiveRecord::SchemaMigration::ActiveRecord_Relation) }
  def page(num = nil); end
end

class ActiveRecord::SchemaMigration < ActiveRecord::Base
  include ActiveRecord::SchemaMigration::GeneratedAttributeMethods
  extend T::Sig
  extend T::Generic
  extend ActiveRecord::SchemaMigration::ModelRelationShared
  Elem = type_template(fixed: ActiveRecord::SchemaMigration)
end

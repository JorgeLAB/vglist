# This is an autogenerated file for dynamic methods in GameEngine
# Please rerun rake rails_rbi:models[GameEngine] to regenerate.

# typed: strong
module GameEngine::GeneratedAttributeMethods
  extend T::Sig

  sig { returns(DateTime) }
  def created_at; end

  sig { params(value: DateTime).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(Integer) }
  def engine_id; end

  sig { params(value: Integer).void }
  def engine_id=(value); end

  sig { returns(T::Boolean) }
  def engine_id?; end

  sig { returns(Integer) }
  def game_id; end

  sig { params(value: Integer).void }
  def game_id=(value); end

  sig { returns(T::Boolean) }
  def game_id?; end

  sig { returns(Integer) }
  def id; end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(DateTime) }
  def updated_at; end

  sig { params(value: DateTime).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module GameEngine::GeneratedAssociationMethods
  extend T::Sig

  sig { returns(::Engine) }
  def engine; end

  sig { params(value: ::Engine).void }
  def engine=(value); end

  sig { returns(::Game) }
  def game; end

  sig { params(value: ::Game).void }
  def game=(value); end
end

class GameEngine::ActiveRecord_Relation < ActiveRecord::Relation
  include GameEngine::ModelRelationShared
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: GameEngine)
end

class GameEngine::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include GameEngine::ModelRelationShared
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: GameEngine)
end

module GameEngine::ModelRelationShared
  extend T::Sig

  sig { returns(GameEngine::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def left_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def left_outer_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def merge(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(GameEngine::ActiveRecord_Relation) }
  def except(*args, &block); end

  sig { params(num: Integer).returns(GameEngine::ActiveRecord_Relation) }
  def page(num = nil); end
end

class GameEngine < ApplicationRecord
  include GameEngine::GeneratedAttributeMethods
  include GameEngine::GeneratedAssociationMethods
  extend T::Sig
  extend T::Generic
  extend GameEngine::ModelRelationShared
  Elem = type_template(fixed: GameEngine)
end

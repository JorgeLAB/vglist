# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sorbet-coerce/all/sorbet-coerce.rbi
#
# sorbet-coerce-0.2.7

module TypeCoerce
  def self.[](type); end
end
module TypeCoerce::Configuration
  def self.raise_coercion_error(*args, &blk); end
  def self.raise_coercion_error=(arg0); end
end
module Polyfill::Module::M70134280611960
end
class TypeCoerce::CoercionError < SafeType::CoercionError
end
class TypeCoerce::ShapeError < SafeType::CoercionError
end
class TypeCoerce::Converter
  def _build_args(args, type, raise_coercion_error); end
  def _convert(value, type, raise_coercion_error); end
  def _convert_simple(value, type, raise_coercion_error); end
  def _convert_to_a(ary, type, raise_coercion_error); end
  def _nil_like?(value, type); end
  def from(args, raise_coercion_error: nil); end
  def initialize(type); end
  def new; end
  def to_s; end
end

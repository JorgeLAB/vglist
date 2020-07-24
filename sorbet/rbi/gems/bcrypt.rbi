# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/bcrypt/all/bcrypt.rbi
#
# bcrypt-3.1.15

class BCrypt::Engine
  def self.__bc_crypt(arg0, arg1); end
  def self.__bc_salt(arg0, arg1, arg2); end
  def self.autodetect_cost(salt); end
  def self.calibrate(upper_time_limit_in_ms); end
  def self.cost; end
  def self.cost=(cost); end
  def self.generate_salt(cost = nil); end
  def self.hash_secret(secret, salt, _ = nil); end
  def self.valid_salt?(salt); end
  def self.valid_secret?(secret); end
end
module BCrypt
end
class BCrypt::Error < StandardError
end
module BCrypt::Errors
end
class BCrypt::Errors::InvalidSalt < BCrypt::Error
end
class BCrypt::Errors::InvalidHash < BCrypt::Error
end
class BCrypt::Errors::InvalidCost < BCrypt::Error
end
class BCrypt::Errors::InvalidSecret < BCrypt::Error
end
class BCrypt::Password < String
  def ==(secret); end
  def checksum; end
  def cost; end
  def initialize(raw_hash); end
  def is_password?(secret); end
  def salt; end
  def self.create(secret, options = nil); end
  def self.valid_hash?(h); end
  def split_hash(h); end
  def valid_hash?(h); end
  def version; end
end

require 'protobuf/activerecord/protoable/columns'
require 'protobuf/activerecord/protoable/convert'
require 'protobuf/activerecord/protoable/errors'
require 'protobuf/activerecord/protoable/persistence'
require 'protobuf/activerecord/protoable/scope'
require 'protobuf/activerecord/protoable/serialization'
require 'protobuf/activerecord/protoable/transformation'

module Protoable
  def self.included(klass)
    klass.extend Protoable::Scope

    klass.__send__(:include, Protoable::Columns)
    klass.__send__(:include, Protoable::Convert)
    klass.__send__(:include, Protoable::Persistence)
    klass.__send__(:include, Protoable::Serialization)
    klass.__send__(:include, Protoable::Transformation)
  end
end

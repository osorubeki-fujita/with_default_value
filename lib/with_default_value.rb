require "active_support"
require "active_support/core_ext"
require "with_default_value/version"
require "with_default_value/basic_object_ext"

module WithDefaultValue

  extend ActiveSupport::Concern

  included do
    ::BasicObject.class_eval do
      include WithDefaultValue::BasicObjectExt
    end
  end

end

include WithDefaultValue
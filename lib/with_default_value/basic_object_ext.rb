module WithDefaultValue::BasicObjectExt

  def with_default_value( default_value )
    if self.blank?
      default_value
    else
      self
    end
  end

end
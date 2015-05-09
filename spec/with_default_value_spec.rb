require 'spec_helper'
require 'deplo'

spec_filename = ::File.expand_path( ::File.dirname( __FILE__ ) )
version = "0.1.0"

describe WithDefaultValue do
  it "has a version number \'#{ version }\'" do
    expect( ::WithDefaultValue::VERSION ).to eq( version )
    expect( ::Deplo.version_check( ::WithDefaultValue::VERSION , spec_filename ) ).to eq( true )
  end
end
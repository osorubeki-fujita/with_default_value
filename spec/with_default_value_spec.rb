require 'spec_helper'
require 'deplo'

spec_filename = ::File.expand_path( ::File.dirname( __FILE__ ) )
version = "0.1.0"

describe WithDefaultValue do
  it "has a version number \'#{ version }\'" do
    expect( ::WithDefaultValue::VERSION ).to eq( version )
    expect( ::Deplo.version_check( ::WithDefaultValue::VERSION , spec_filename ) ).to eq( true )
  end

  describe BasicObjectExt do
    describe "\#with_default_value" do
      it "checkes instance by \'blank?\' (defined by ActiveSupport, not \'nil?\'). If the instance is evaluated as blank, returns default value." do
        expect( nil.with_default_value( "abc" ) ).to eq( "abc" )
        expect( "def".with_default_value( "abc" ) ).to eq( "def" )
        expect( " ".with_default_value( "abc" ) ).to eq( "abc" )
        expect( 2.with_default_value( "abc" ) ).to eq(2)
        expect( nil.with_default_value(3) ).to eq(3)
      end
    end
  end

end
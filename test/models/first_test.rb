require "test_helper"

class FirstTest < ActiveSupport::TestCase
    test "esse é o meu primeiro teste" do
        variavel = "Fersoft"
        assert_equal "Fersoft", variavel        
    end
    
end
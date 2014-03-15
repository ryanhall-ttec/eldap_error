defmodule EldapErrorTest do
  use ExUnit.Case

  test "test for succesful authorization" do
    should_be_true = EldapError.LdapTest.connect('user@fully.qualified.domain','password','domain_controller.fqn')
    assert(should_be_true)
  end
end

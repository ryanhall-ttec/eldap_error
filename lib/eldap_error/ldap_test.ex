defmodule EldapError.LdapTest do
  def connect(username, password, ldap_server) do 
    case :eldap.open([ldap_server]) do
      { :ok, ldap_connection } ->
        result = :eldap.simple_bind(ldap_connection, username, password)
        :eldap.close(ldap_connection)
        case result do
           :ok ->
            true
          { :error, _reason } ->
            false
        end
      { :error, reason } ->
        false
    end
  end
end
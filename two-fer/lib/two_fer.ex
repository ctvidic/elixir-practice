defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name \\ "you") do
    if is_atom(name) or is_list(name) or is_number(name) do
      raise FunctionClauseError
    else
      "One for #{name}, one for me."
    end
  end
end

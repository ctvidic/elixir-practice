defmodule CollatzConjecture do
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) do
    if input == 0 or input < 0 or is_integer(input) == false do
      raise FunctionClauseError
    else
      if input == 1 do
        0
      else
        if rem(input,2) == 0 do
          1+calc(div(input,2))
        else
          1+calc((input*3)+1)
        end
      end
    end
  end
end

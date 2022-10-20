defmodule SpaceAge do
  @type planet ::
          :mercury
          | :venus
          | :earth
          | :mars
          | :jupiter
          | :saturn
          | :uranus
          | :neptune

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet', or an error if 'planet' is not a planet.
  """
  @spec age_on(planet, pos_integer) :: {:ok, float} | {:error, String.t()}
  def age_on(planet, seconds) do
    case planet do
      :earth -> {:ok, earth_years(seconds)}
      :mercury -> {:ok, earth_years(seconds)/0.2408467}
      :venus -> {:ok, earth_years(seconds)/0.61519726}
      :mars -> {:ok, earth_years(seconds)/1.8808158}
      :jupiter -> {:ok, earth_years(seconds)/11.862615}
      :saturn -> {:ok, earth_years(seconds)/29.447498}
      :uranus -> {:ok, earth_years(seconds)/84.016846}
      :neptune -> {:ok, earth_years(seconds)/164.79132}
      _ -> {:error, "not a planet"}
    end
  end

  def earth_years(seconds) do
    seconds/31_557_600
  end
end

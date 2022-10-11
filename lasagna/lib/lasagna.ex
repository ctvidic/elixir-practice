defmodule Lasagna do
  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(min) do
    expected_minutes_in_oven - min
  end

  def preparation_time_in_minutes(layers) do
    2*layers
  end

  def total_time_in_minutes(layers, min) do
    min + preparation_time_in_minutes(layers)
  end

  def alarm do
    "Ding!"
  end
end

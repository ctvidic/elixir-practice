defmodule BirdCount do
  def today([]), do: nil

  def today([x | rest]) do
    x
  end

  def increment_day_count([]) do
    [1]
  end

  def increment_day_count([x | rest]) do
    [x+1 | rest]
  end

  def has_day_without_birds?([x | rest]) do
    if x == 0 do
      true
    else
      has_day_without_birds?(rest)
    end
  end

  def has_day_without_birds?([]) do
    false
  end

  def total([]) do
    0
  end

  def total([x | rest]) do
    x + total(rest)
  end

  def busy_days([]) do
    0
  end

  def busy_days([x | rest]) do
    if x > 4 do
      1 + busy_days(rest)
    else
      busy_days(rest)
    end
  end
end

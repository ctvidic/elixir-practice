defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair,1)
  end

  def to_milliliter(volume_pair) do
    type = elem(volume_pair,0)
    volume = elem(volume_pair, 1)
    case type do
      :cup -> {:milliliter, volume * 240}
      :fluid_ounce -> {:milliliter, volume * 30}
      :teaspoon -> {:milliliter, volume * 5}
      :tablespoon -> {:milliliter, volume * 15}
      :milliliter -> {:milliliter, volume * 1}
    end
  end

  def from_milliliter(volume_pair, unit) do
    volume = elem(volume_pair, 1)
    case unit do
      :cup -> {:cup, volume / 240}
      :fluid_ounce -> {:fluid_ounce, volume / 30}
      :teaspoon -> {:teaspoon, volume / 5}
      :tablespoon -> {:tablespoon, volume / 15}
      :milliliter -> {:milliliter, volume / 1}
    end
  end

  def convert(volume_pair, unit) do
    converted_pair = to_milliliter(volume_pair)
    from_milliliter(converted_pair, unit)
  end
end

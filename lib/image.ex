defmodule Identicon.Image do
@moduledoc """
  This is a module that holds a struct which holds the data of the identicon.
"""
  @doc """
    `%Identicon.Image{hex: nil, colour: nil}` contains four elements, `hex`, `colour`, `grid`, and `pixel_map`. `hex`
    should receive a list, `colour` a tuple, `grid` a list, and `pixel_map` a list.
  """
  defstruct hex: nil, colour: nil, grid: nil, pixel_map: nil
end

defmodule Identicon.Image do
@moduledoc """
  This is a module that holds a struct which holds the data of the identicon.
"""
  @doc """
    `%Identicon.Image{hex: nil, colour: nil}` contains two elements, `hex` and `colour`. `hex`
    should receive a list and `colour` a tuple.
  """
  defstruct hex: nil, colour: nil
end

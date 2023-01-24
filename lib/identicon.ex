defmodule Identicon do
  @moduledoc """
  Documentation for `Identicon`.
  """

  @doc """
    This is the main function, where all the process is run.
  """
  def main(input) do
    input
    |> hash_input
    |> pick_colour
  end

  @doc """
    `pick_colour` function receives `image` and `r`, `g`, `b` and returns a new struct containg image and a tuple: `{r, g, b}`
  """
  def pick_colour(%Identicon.Image{hex: [r, g, b | _]} = image) do
    %Identicon.Image{image | colour: {r, g, b}}
  end

  @doc """
    This is the hashing function. It calls `%Identicon.Image{hex: hex}` sending `hex` to the struct.
  """
  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end
end

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
    |> build_grid
  end

  def mirror_rows(list_triples) do
    # for triplet <- list_triples do
    #   [a, b | _ ] = triplet
    #   [ triplet | [b, a]]
    #   |> List.flatten
    # end
    # instructor's solution is to do:
    # triplet ++ [b, a] rather than what I did [triplet | [b, a]] and then flatten
    # I will adopt his solution since it is shorter.
    for triplet <- list_triples do
      [first, second | _ ] = triplet
      triplet ++ [second, first]
    end
    # Also, he uses map, instead of for, so I will do that as well, since it is simpler
    # Enum.map(list_triples, (triplet -> triplet))
  end

  def build_grid(%Identicon.Image{hex: hex} = _image) do
    hex
    |> Enum.chunk_every(3, 3, :discard)
    |> mirror_rows
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

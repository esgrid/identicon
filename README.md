# Identicon

This is a mini project from Stephen Grider's [The Complete Elixir and Phoenix Bootcamp](https://www.udemy.com/course/the-complete-elixir-and-phoenix-bootcamp-and-tutorial/). 

The course is a bit outdated (for early 2023) so it requires some amendments. In `mix.exs` you should add `{:egd, github: "erlang/egd"}` to the dependencies since `:egd` is no longer supported.

Do `mix deps.get` and then `iex -S mix` to run it. The prompt in the terminal will say something like `Could not find "rebar3", which is needed to build dependency :egd` and it will also ask you `Shall I install rebar3?`. If you type `y` you should be ready to go. 

You could also just add `{:egd, github: "erland/egd", manager: :rebar3}` and this should work directly after doing `mix deps.get` without having to install `rebar3` as a second step.

After sorting out the dependencies stuff, run `iex -S mix` and call `Identicon.main("your_desired_string")`. A 250px by 250px [identicon](https://en.wikipedia.org/wiki/Identicon) based on `your_desired_string` will be crated.

## Example

### To run

```
mix deps.get
iex -S mix
```

### To Generate Identicon
```
iex> Identicon.main("avatar")
```
The terminal should give you a glorious
```
:ok
```
And you should have a shiny new file called `avatar.png`, which should lookl like this:
![avatar identicon](./avatar.png)



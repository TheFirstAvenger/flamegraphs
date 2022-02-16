defmodule FlamegraphsWeb.PageView do
  use FlamegraphsWeb, :view

  def get_foo_data do
    do_work(:foo)
    :foo
  end

  def get_bar_data do
    do_work(:bar)
    :bar
  end

  def get_baz_data do
    Enum.map(1..100, fn _ -> do_work(:baz) end)
    :baz
  end

  defp do_work(type) do
    duration =
      case type do
        :foo -> 1000
        :bar -> 500
        :baz -> 50
      end

    :timer.sleep(duration)
  end
end

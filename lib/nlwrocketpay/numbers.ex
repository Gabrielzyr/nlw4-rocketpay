defmodule NlwrocketpayWeb.Numbers do
  def sum_from_file(filename) do
    "#{filename}.csv"
    |>File.read()
    |>handle_file()
  end

  defp handle_file({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Stream.map(fn number -> String.to_integer(number) end)
      |> Enum.sum()

    {:ok, %{result: result}}
  end

  defp handle_file({:error, _reason}), do: {:error, %{message: "Invalid file"}}
end

#
### The other method is called "Pipe operator"
# def sum_from_file(filename) do
  # file = File.read("#{filename}.csv")
  # handle_file(file)
# end

# defp handle_file({:ok, result}) do
  # result = String.split(result, ",")
  # result = Enum.map(result, fn number -> String.to_integer(number) end)
  # result = Enum.sum(result)
  # result
# end

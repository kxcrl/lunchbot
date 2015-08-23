defimpl Poison.Encoder, for: Any do
  def encode(%{__struct__: _} = struct, options) do
    sanitize(struct) |> Poison.Encoder.encode(options)
  end

  def encode(response, options) do
    {:ok, struct} = response

    sanitize(struct) |> Poison.Encoder.encode(options)
  end

  defp sanitize(struct) do
    struct
    |> Map.from_struct
    |> Map.drop([:__meta__, :__struct__])
  end
end

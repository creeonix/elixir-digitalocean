defmodule DigitalOcean.Action do
	@moduledoc """
	API methods for interacting with the `Action` module.

	See the [Action Reference](https://developers.digitalocean.com/documentation/v2/#account).
	"""

	import DigitalOcean, only: [get: 1, body: 1, full: 1]

	@doc """
	List all Actions.
	"""
	def list, do: get("actions") |> full

	@doc """
	Similar to `list/0` but returns the response body only.
	"""
	def list!, do: list() |> body

	@doc """
	Get an Action.
	"""
	def show(action_id), do: get("actions/#{action_id}") |> full

	@doc """
	Similar to `show/1` but returns the response body only.
	"""
	def show!(action_id), do: show(action_id) |> body
end

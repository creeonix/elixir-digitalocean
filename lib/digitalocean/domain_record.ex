defmodule DigitalOcean.Domain.Record do
	@moduledoc """
	API methods for interacting with the `Domain Record` module.

	See the [Domain Record Reference](https://developers.digitalocean.com/documentation/v2/#domain-records).
	"""

	import DigitalOcean, only: [get: 1, post: 2, put: 2, del: 1, body: 1, full: 1]

	@doc """
	List all Records for a Domain.
	"""
	def list(domain), do: url(domain) |> get |> full

	@doc """
	Similar to `list/0` but returns the response body only.
	"""
	def list!(domain), do: list(domain) |> body

	@doc """
	Create a new Domain Record.

	## Example
		iex> DigitalOcean.Domain.Record.create("example.com",
			%{type: "A", name: "www", data: "162.10.66.0"})
	"""
	def create(domain, attrs), do: url(domain) |> post(attrs) |> full

	@doc """
	Similar to `create/2` but returns the response body only.
	"""
	def create!(domain, attrs), do: create(domain, attrs) |> body

	@doc """
	Get an existing Record for a Domain.

	## Example
		iex> DigitalOcean.Domain.Record.show("example.com", 3352896)
	"""
	def show(domain, record_id), do: url(domain, record_id) |> get |> full

	@doc """
	Similar to `show/2` but returns the response body only.
	"""
	def show!(domain, record_id), do: show(domain, record_id) |> body

	@doc """
	Update an existing Domain Record.

	## Example
		iex> DigitalOcean.Domain.Record.update("example.com", 3352896, %{name: "blog"})
	"""
	def update(domain, record_id, attrs), do: url(domain, record_id) |> put(attrs) |> full

	@doc """
	Similar to `update/3` but returns the response body only.
	"""
	def update!(domain, record_id, attrs), do: update(domain, record_id, attrs) |> body

	@doc """
	Delete a Domain Record.
	"""
	def delete(domain, record_id), do: url(domain, record_id) |> del |> full

	@doc """
	Similar to `delete/2` but returns the response body only.
	"""
	def delete!(domain, record_id), do: delete(domain, record_id) |> body

	defp url(name), do: "domains/#{name}/records"
	defp url(name, rec), do: "#{url(name)}/#{rec}"
end

defmodule DigitalOcean.Droplet do
	@moduledoc """
	API methods for interacting with the `Droplet` module.

	See the [Droplet Reference](https://developers.digitalocean.com/documentation/v2/#droplets).
	"""

	import DigitalOcean, only: [get: 1, post: 2, del: 1, body: 1, full: 1]

	@doc """
	List all Droplets.
	"""
	def list, do: get("droplets") |> full
	def list!, do: list() |> body

	@doc """
	Get all Droplets with a given Tag. Same as `DigitalOcean.Tag.droplets/1`.
	"""
	def list(tag), do: get("droplets?tag_name=#{tag}") |> full
	def list!(tag), do: list(tag) |> body

	@doc """
	Create a new Droplet.
	"""
	def create(data), do: post("droplets", data) |> full
	def create!(data), do: create(data) |> body

	def create(names, data), do: Map.drop(data, [:name]) |> Map.put(:names, names) |> create
	def create!(names, data), do: create(names, data) |> body

	@doc """
	Get an existing Droplet.
	"""
	def show(droplet_id), do: url(droplet_id) |> get |> full
	def show!(droplet_id), do: show(droplet_id) |> body

	@doc """
	List available Kernels for a Droplet.
	"""
	def show_kernels(droplet_id), do: url(droplet_id, "kernels") |> get |> full
	def show_kernels!(droplet_id), do: show_kernels(droplet_id) |> body

	@doc """
	List snapshots for a Droplet.
	"""
	def show_snapshots(droplet_id), do: url(droplet_id, "/snapshots") |> get |> full
	def show_snapshots!(droplet_id), do: show_snapshots(droplet_id) |> body

	@doc """
	List available backups for a Droplet.
	"""
	def show_backups(droplet_id), do: url(droplet_id, "backups") |> get |> full
	def show_backups!(droplet_id), do: show_backups(droplet_id) |> body

	@doc """
	Delete a Droplet by its `id` or all Droplets with given `Tag`.
	"""
	def delete(key) when is_binary(key), do: del("droplets?tag_name=#{key}") |> full
	def delete(key) when is_integer(key), do: url(key) |> del |> full
	def delete!(key), do: delete(key) |> body

	defp url(id), do: "droplets/#{id}"
	defp url(id, path), do: "#{url(id)}/#{path}"
end

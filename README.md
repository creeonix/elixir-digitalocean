# DigitalOcean [![Build Status](https://travis-ci.org/lukeed/elixir-digitalocean.svg?branch=master)](https://travis-ci.org/lukeed/elixir-digitalocean) [![Hex pm](http://img.shields.io/hexpm/v/digitalocean.svg?style=flat)](https://hex.pm/packages/digitalocean)

> A (WIP) Elixir wrapper for the Digital Ocean API v2. ([View Docs](https://hexdocs.pm/digitalocean/))

## Installation

1. Add `digitalocean` to your list of dependencies in `mix.exs`:

  ```elixir
  def deps do
    [{:digitalocean, "~> 0.1.1"}]
  end
  ```

2. Ensure `digitalocean` is started before your application:

  ```elixir
  def application do
    [applications: [:digitalocean]]
  end
  ```

3. Configure your `digitalocean` application settings:

  ```elixir
  config :digitalocean, token: "YOUR_API_TOKEN"
  ```

## To Do

- [x] The [Droplet](https://developers.digitalocean.com/documentation/v2/#droplets) module.
- [x] The [Droplet Action](https://developers.digitalocean.com/documentation/v2/#droplet-actions) module.
- [x] The [Floating IP](https://developers.digitalocean.com/documentation/v2/#floating-ips) module.
- [x] The [Floating IP Action](https://developers.digitalocean.com/documentation/v2/#floating-ip-actions) module.
- [x] The [Image](https://developers.digitalocean.com/documentation/v2/#images) module.
- [x] The [Image Action](https://developers.digitalocean.com/documentation/v2/#image-actions) module.
- [x] The [Tag](https://developers.digitalocean.com/documentation/v2/#tags) module.
- [ ] Add `@doc`-based tests
- [ ] Add all method documentation

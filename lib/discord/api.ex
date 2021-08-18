defmodule Discord.Api do
  use Mojito.Base

  def default_headers do
    url = Discord.MixProject.project()[:source_url]
    version = Discord.MixProject.project()[:version]
    {:ok, token} = Application.fetch_env(:discord, :token)

    [
      {"authorization", "Bot #{token}"},
      {"user-agent", "DiscordBot (#{url}, #{version})"}
    ]
  end
end

defmodule Statex.Wwwest do
	use Silverb
	require Wwwest
	Wwwest.callback_module do
		def handle_wwwest(req = %Wwwest.Proto{cmd: "set_state", args: %{app: app, host: host, ok: ok, info: info}}) when (is_binary(app) and is_binary(host) and is_boolean(ok) and is_binary(info)) do
			%Statex.Info{app: app, host: host, ok: ok, info: info, stamp_updated: Exutils.makestamp} |> Statex.Tinca.put(%{app: app, host: host})
			Wwwest.ok(req) |> Wwwest.encode
		end
		def handle_wwwest(req = %Wwwest.Proto{cmd: "get_state"}) do
			HashUtils.set(req, :result, %{list: Statex.Tinca.iterate_acc([], fn({_,v},acc) -> [Map.delete(v, :__struct__)|acc] end), stamp_now: Exutils.makestamp})
			|> Wwwest.ok
			|> Wwwest.encode
		end
	end
end
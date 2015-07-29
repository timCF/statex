defmodule Statex.Structs do
	use Silverb
	defmacro __using__(_) do
		quote location: :keep do
			use Hashex, [__MODULE__.Info]
			defmodule Info do
				defstruct 	app: nil,
							host: nil,
							ok: nil,
							info: "",
							stamp_updated: nil 
			end
		end
	end
end
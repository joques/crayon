### A Pluto.jl notebook ###
# v0.14.7

using Markdown
using InteractiveUtils

# ╔═╡ 74ec6327-4dba-4f5e-9312-358fccd754c4
using Pkg

# ╔═╡ 63562ef0-2ece-4410-a218-1f2e32847524
Pkg.activate("../Project.toml")

# ╔═╡ 1bff64b5-4402-4aca-86a7-1ca863d6056d
using PlutoUI

# ╔═╡ 0afb174d-b1f7-4e76-b7d1-ef945a2ae56a
using Markdown

# ╔═╡ 6b8d707d-36c9-4ba1-9e38-d52aff42194b
using InteractiveUtils

# ╔═╡ c81203ea-e929-11eb-3fdd-31feda75a648
md"# Introduction to Julia"

# ╔═╡ 51fd85e0-c2e9-4a4d-9c99-da0da9ea173f
md"""This short tutorial in Julia covers the following
* Basics
* Data Structures
* Control Flow
* Functions
* Complex Structures
"""

# ╔═╡ ff6d8179-7915-451e-b3bb-479aba79f1eb
md"## Loading packages"

# ╔═╡ b1e94cf4-6755-448a-b89c-e71aeada4631


# ╔═╡ 65cd3fba-a2f5-43e2-b9d6-2d4837030f84
with_terminal() do
	println("Welcome to the Julia tutorial")
end

# ╔═╡ 34fbf191-f1fe-4a23-aca7-4b122383bd5a
me = 6

# ╔═╡ ec3d2abc-3b90-4b71-b261-cdab4b757aaf
with_terminal() do
 println(me)
end

# ╔═╡ 9a30f62e-fddb-40e9-87aa-a7227e171049


# ╔═╡ Cell order:
# ╟─c81203ea-e929-11eb-3fdd-31feda75a648
# ╟─51fd85e0-c2e9-4a4d-9c99-da0da9ea173f
# ╠═ff6d8179-7915-451e-b3bb-479aba79f1eb
# ╠═74ec6327-4dba-4f5e-9312-358fccd754c4
# ╠═63562ef0-2ece-4410-a218-1f2e32847524
# ╠═1bff64b5-4402-4aca-86a7-1ca863d6056d
# ╠═0afb174d-b1f7-4e76-b7d1-ef945a2ae56a
# ╠═6b8d707d-36c9-4ba1-9e38-d52aff42194b
# ╠═b1e94cf4-6755-448a-b89c-e71aeada4631
# ╠═65cd3fba-a2f5-43e2-b9d6-2d4837030f84
# ╠═34fbf191-f1fe-4a23-aca7-4b122383bd5a
# ╠═ec3d2abc-3b90-4b71-b261-cdab4b757aaf
# ╠═9a30f62e-fddb-40e9-87aa-a7227e171049

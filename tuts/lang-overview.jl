### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ f7dcdbb0-fa5e-4c55-a7f7-0d1efcb16871
using PlutoUI

# ╔═╡ 07af8438-f461-11eb-0fa2-5d7a365aa410
md"# Julia Programming Language -- An Quick Overview"

# ╔═╡ 5700144a-6f39-44cb-b4b0-790b78317961
md"""In this notebook, I will provide a quick"""

# ╔═╡ 020f4ffb-2508-46fc-89e5-c544dd50970f
md"""
1. Built-in Types
1. Data Structures
1. Control Flow
1. Functions
1. Input/Output
"""

# ╔═╡ 8b1ad10e-cba5-42fd-a9cb-3b2450e602c6
md"## Built-in Types"

# ╔═╡ e3184fed-9785-46d3-bc68-98e07086fa9f
md"""Just like most advanced ..."""

# ╔═╡ e72655a8-7995-4cf8-9f8c-676c81890064
var1 = 456

# ╔═╡ 0feccf4a-9cf4-46e7-b33e-abd0b39183e8
with_terminal() do
	println(var1)
end

# ╔═╡ def24b16-41ee-493a-aa50-da0d0c259d82
typeof(var1)

# ╔═╡ 53167da8-34a4-42cc-b03c-fed308debeea
var2 = 57

# ╔═╡ d37acf21-ba17-43d3-a06e-689cc7aba666
var3 = var1 + var2

# ╔═╡ 7d324d0a-5cf0-4eeb-a943-8d9e61b15b70
var4 = 24.7

# ╔═╡ 4e793512-a768-4b7a-8900-cbad8c67e820
var5 = var1 + var4

# ╔═╡ 2a4c2524-6418-47a2-8cb8-284f9f975263
typeof(var5)

# ╔═╡ 1b66dad1-ca4c-442f-b214-81e9350d39d5
var6 = true

# ╔═╡ 4e5e49b3-16aa-4ddb-913d-cb3e80b7ae06
!var6

# ╔═╡ 4e247c38-32ed-4f37-9957-66927e0f9e5c
var7 = 'a'

# ╔═╡ 706dddec-956d-43db-8e39-c563886c1860
δ = var7 + 33

# ╔═╡ d11732b0-5853-4c72-a736-a97323d3411d
str1 = "Hello "

# ╔═╡ 402abbed-fd9e-455b-910c-2c5b6f772206
with_terminal() do
	println(str1)
end

# ╔═╡ 1316d942-11ce-4e6b-b3e0-d6f8a014647d
str2 = str1 * "world"

# ╔═╡ 57e7e954-f92a-4633-9b77-588b66c2fdc0
var9 = :r1

# ╔═╡ 1954e6ee-0ff6-4215-90c8-c2e3968ebbb9
with_terminal() do
	println(var9)
end

# ╔═╡ 99adae4d-f33f-44d8-82a0-b2212339ff23
md"## Data Structures"

# ╔═╡ f4a3179c-694d-4f0a-8a76-dd26410ee396
md"### Ranges"

# ╔═╡ 732e3f8e-25af-48ec-92c2-fd17c3da29d0
r1 = 5:15

# ╔═╡ 23a40cf8-0dff-4201-8900-d708e9c5cfb1
typeof(r1)

# ╔═╡ d11f0b0e-a74e-4c7e-bd5d-c32d3eb3605c
r1.start

# ╔═╡ e30bb111-77bc-46e3-993e-fb31d471d5b3
r1.stop

# ╔═╡ c596b3f5-a2c5-43c0-83d9-9c1603d6f187
md"### Arrays"

# ╔═╡ 09480f9e-a239-4122-a921-79e5d5629f54
arr1 = Array{Int64}(undef, 3, 2)

# ╔═╡ 7c4f6ba4-618e-4f13-9c05-6b56d5f09b00
length(arr1)

# ╔═╡ 9089e337-0e2a-44bf-87ae-9b487abe40df
size(arr1)

# ╔═╡ 21e11421-ff72-494d-adf3-40b589e5faad
arr2 = Array{Float64}(undef, 4)

# ╔═╡ 530d1db6-4d72-4e5f-a21c-434811c08605
arr3 = zeros(Int64, 4, 4)

# ╔═╡ 6dc64d59-2f3f-4f9c-aeb2-efe3d07d10f7
arr5 = randn(4, 4)

# ╔═╡ aedbfd05-f5fb-45ea-8166-02193c968784
eltype(arr5)

# ╔═╡ 96099d35-fd38-4002-8410-89f2fa20e0d2
ndims(arr5)

# ╔═╡ 763090b7-bbf5-42ce-a363-3f5988c139d8
size(arr5)

# ╔═╡ e4ec7faf-81c6-4ffb-b585-1ba18cc0ff06
size(arr5, 1)

# ╔═╡ 505a3f36-abc8-4529-9919-c643c84c9a02
size(arr5, 2)

# ╔═╡ 0d5e1409-632c-4f0f-bdc0-2b95975b1a3f
axes(arr5)

# ╔═╡ d63ddedc-0e7c-4e50-91ef-50de78c015b3
arr6 = rand(3, 5)

# ╔═╡ c050a61a-658f-4474-9c7f-02e15f434b01
arr7 = 45:3:100

# ╔═╡ 9737c539-641c-4395-aba3-258e0dedf587
length(arr7)

# ╔═╡ ac5a7bb6-f7a8-4459-8d38-577c94684f3c
md"### Tuples"

# ╔═╡ 01fc5525-1d8d-4e29-8f36-b0d6efe9af7a
tu1 = (0.0, "greetings")

# ╔═╡ 0ee2cbb7-16b9-4939-9b09-44bad525a79a
@show tu1[1]

# ╔═╡ c444c0f4-50e6-4d4e-844c-2b61bf6763c6
@show tu1[2]

# ╔═╡ 62607833-2b5b-4cf9-8322-5c2911e8ce79
tu2 = (c1 = 60, c2 = 0.7)

# ╔═╡ bb339b28-f5c5-4734-b244-7da976e73cda
@show tu2[1]

# ╔═╡ e99a2fa4-6faf-4368-8db3-333d68d53c75
@show tu2.c1

# ╔═╡ 062db493-2016-4fd0-a59f-5f2b65a7af50
md"### Dictionaries"

# ╔═╡ c33db730-13e7-423f-89e1-9433e458ffef
di1 = Dict{Symbol, Int64}(:q1 => 15, :q2 => 44)

# ╔═╡ e324e914-ef21-4285-96ca-3476bfef4f4f
di2 = Dict(1 => "hello", 2 => "world", 3 => "everybody")

# ╔═╡ 8628b0c0-adb0-4def-a283-a48701b20e41
typeof(di2)

# ╔═╡ a2a18810-30b6-4568-a1c6-0a20406a5f88
md"### Complex Objects"

# ╔═╡ 142e066a-371b-4e5d-918f-782562d801a6
struct Student
	name::String
	course::Symbol
	marks::Vector{Float64}
end

# ╔═╡ 64478fa5-dccf-4991-a1d9-5d55d154cb1d
st1 = Student("Thomas", :c1, [4.5, 3, 5, 5])

# ╔═╡ 174538bf-c456-44ca-936a-a9a9abfb34bf
@show st1.name

# ╔═╡ 38bb47c5-b445-4f4f-84d4-acdfeb662628
@show st1.course

# ╔═╡ dcdc3701-d9dd-4810-add0-5967fa106747
@show st1.marks

# ╔═╡ 8f99136d-1808-43d7-92cb-39fe1458deaa
mutable struct ClubMember
	name::String
	activity::Symbol
	credit::Int64
end

# ╔═╡ 1d23b5a9-7269-4034-81bf-da8e122b269e


# ╔═╡ eb794898-b7da-496d-9581-aef087b5800e
member1 = ClubMember("Annie", :boxing, 40)

# ╔═╡ 3d55f66e-7230-4786-bd2a-ac0ae8ad9a65
@show member1

# ╔═╡ e8ef55a9-0f6b-4ccc-b307-bf7c5e7b2e0c
member1.credit += 20

# ╔═╡ 5afeec63-0a61-4bf5-8e60-30baff081f4a
@show member1

# ╔═╡ e28bf60e-d9df-4e61-844d-157bfff0a68f
md"## Control Flow"

# ╔═╡ 1e8cad33-49bd-40b5-9093-51fa4f695354
md"### Compound statements"

# ╔═╡ 7b847796-a349-48d6-9c12-034ff3b7f72a
z = begin
	cp1 = 3
	cp2 = 4
	cp1 + cp2
end

# ╔═╡ 5bfe7612-ff2a-4882-b409-fda289045e7f
md"### Conditional evaluation"

# ╔═╡ 3b95cd80-a77c-430b-b4ca-e1f7bfc1afd5
begin
	with_terminal() do
		ts1 = 42
		ts2 = 27
		if ts1 < ts2
			println("ts1 is less than ts2")
		elseif ts1 > ts2
			println("ts1 is greater than ts2")
		else
			println("these two values are equal")
		end
	end
end

# ╔═╡ 4c54082a-acd0-4a9d-92cd-c976c8cce774
md"### Loops"

# ╔═╡ 868b3653-42ab-4353-9a2a-3f944ffd590f
begin
	with_terminal() do
		i1 = 5
		while i1 > 0
			println("current iteration $i1")
			i1 -= 1
		end
	end
end

# ╔═╡ e490fce8-6ab6-488c-93a2-c62dd9165640
begin
	with_terminal() do
		for i2 = 2:8, j2 = 4:9
			println("for loop ($i2,$j2) ")
		end
	end
end

# ╔═╡ a74c95e6-0b01-4215-899a-4578a81a5e6a


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.9"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "81690084b6198a2e1da36fcfda16eeca9f9f24e4"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.1"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "bfd7d8c7fd87f04543810d9cbd3995972236ba1b"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "1.1.2"

[[PlutoUI]]
deps = ["Base64", "Dates", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "Suppressor"]
git-tree-sha1 = "44e225d5837e2a2345e69a1d1e01ac2443ff9fcb"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.9"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[Reexport]]
git-tree-sha1 = "5f6c21241f0f655da3952fd60aa18477cf96c220"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.1.0"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[Suppressor]]
git-tree-sha1 = "a819d77f31f83e5792a76081eee1ea6342ab8787"
uuid = "fd094767-a336-5f1f-9728-57cf17d0bbfb"
version = "0.2.0"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
"""

# ╔═╡ Cell order:
# ╠═07af8438-f461-11eb-0fa2-5d7a365aa410
# ╠═f7dcdbb0-fa5e-4c55-a7f7-0d1efcb16871
# ╠═5700144a-6f39-44cb-b4b0-790b78317961
# ╠═020f4ffb-2508-46fc-89e5-c544dd50970f
# ╠═8b1ad10e-cba5-42fd-a9cb-3b2450e602c6
# ╠═e3184fed-9785-46d3-bc68-98e07086fa9f
# ╠═e72655a8-7995-4cf8-9f8c-676c81890064
# ╠═0feccf4a-9cf4-46e7-b33e-abd0b39183e8
# ╠═def24b16-41ee-493a-aa50-da0d0c259d82
# ╠═53167da8-34a4-42cc-b03c-fed308debeea
# ╠═d37acf21-ba17-43d3-a06e-689cc7aba666
# ╠═7d324d0a-5cf0-4eeb-a943-8d9e61b15b70
# ╠═4e793512-a768-4b7a-8900-cbad8c67e820
# ╠═2a4c2524-6418-47a2-8cb8-284f9f975263
# ╠═1b66dad1-ca4c-442f-b214-81e9350d39d5
# ╠═4e5e49b3-16aa-4ddb-913d-cb3e80b7ae06
# ╠═4e247c38-32ed-4f37-9957-66927e0f9e5c
# ╠═706dddec-956d-43db-8e39-c563886c1860
# ╠═d11732b0-5853-4c72-a736-a97323d3411d
# ╠═402abbed-fd9e-455b-910c-2c5b6f772206
# ╠═1316d942-11ce-4e6b-b3e0-d6f8a014647d
# ╠═57e7e954-f92a-4633-9b77-588b66c2fdc0
# ╠═1954e6ee-0ff6-4215-90c8-c2e3968ebbb9
# ╠═99adae4d-f33f-44d8-82a0-b2212339ff23
# ╠═f4a3179c-694d-4f0a-8a76-dd26410ee396
# ╠═732e3f8e-25af-48ec-92c2-fd17c3da29d0
# ╠═23a40cf8-0dff-4201-8900-d708e9c5cfb1
# ╠═d11f0b0e-a74e-4c7e-bd5d-c32d3eb3605c
# ╠═e30bb111-77bc-46e3-993e-fb31d471d5b3
# ╠═c596b3f5-a2c5-43c0-83d9-9c1603d6f187
# ╠═09480f9e-a239-4122-a921-79e5d5629f54
# ╠═7c4f6ba4-618e-4f13-9c05-6b56d5f09b00
# ╠═9089e337-0e2a-44bf-87ae-9b487abe40df
# ╠═21e11421-ff72-494d-adf3-40b589e5faad
# ╠═530d1db6-4d72-4e5f-a21c-434811c08605
# ╠═6dc64d59-2f3f-4f9c-aeb2-efe3d07d10f7
# ╠═aedbfd05-f5fb-45ea-8166-02193c968784
# ╠═96099d35-fd38-4002-8410-89f2fa20e0d2
# ╠═763090b7-bbf5-42ce-a363-3f5988c139d8
# ╠═e4ec7faf-81c6-4ffb-b585-1ba18cc0ff06
# ╠═505a3f36-abc8-4529-9919-c643c84c9a02
# ╠═0d5e1409-632c-4f0f-bdc0-2b95975b1a3f
# ╠═d63ddedc-0e7c-4e50-91ef-50de78c015b3
# ╠═c050a61a-658f-4474-9c7f-02e15f434b01
# ╠═9737c539-641c-4395-aba3-258e0dedf587
# ╠═ac5a7bb6-f7a8-4459-8d38-577c94684f3c
# ╠═01fc5525-1d8d-4e29-8f36-b0d6efe9af7a
# ╠═0ee2cbb7-16b9-4939-9b09-44bad525a79a
# ╠═c444c0f4-50e6-4d4e-844c-2b61bf6763c6
# ╠═62607833-2b5b-4cf9-8322-5c2911e8ce79
# ╠═bb339b28-f5c5-4734-b244-7da976e73cda
# ╠═e99a2fa4-6faf-4368-8db3-333d68d53c75
# ╠═062db493-2016-4fd0-a59f-5f2b65a7af50
# ╠═c33db730-13e7-423f-89e1-9433e458ffef
# ╠═e324e914-ef21-4285-96ca-3476bfef4f4f
# ╠═8628b0c0-adb0-4def-a283-a48701b20e41
# ╠═a2a18810-30b6-4568-a1c6-0a20406a5f88
# ╠═142e066a-371b-4e5d-918f-782562d801a6
# ╠═64478fa5-dccf-4991-a1d9-5d55d154cb1d
# ╠═174538bf-c456-44ca-936a-a9a9abfb34bf
# ╠═38bb47c5-b445-4f4f-84d4-acdfeb662628
# ╠═dcdc3701-d9dd-4810-add0-5967fa106747
# ╠═8f99136d-1808-43d7-92cb-39fe1458deaa
# ╠═1d23b5a9-7269-4034-81bf-da8e122b269e
# ╠═eb794898-b7da-496d-9581-aef087b5800e
# ╠═3d55f66e-7230-4786-bd2a-ac0ae8ad9a65
# ╠═e8ef55a9-0f6b-4ccc-b307-bf7c5e7b2e0c
# ╠═5afeec63-0a61-4bf5-8e60-30baff081f4a
# ╠═e28bf60e-d9df-4e61-844d-157bfff0a68f
# ╠═1e8cad33-49bd-40b5-9093-51fa4f695354
# ╠═7b847796-a349-48d6-9c12-034ff3b7f72a
# ╠═5bfe7612-ff2a-4882-b409-fda289045e7f
# ╠═3b95cd80-a77c-430b-b4ca-e1f7bfc1afd5
# ╠═4c54082a-acd0-4a9d-92cd-c976c8cce774
# ╠═868b3653-42ab-4353-9a2a-3f944ffd590f
# ╠═e490fce8-6ab6-488c-93a2-c62dd9165640
# ╠═a74c95e6-0b01-4215-899a-4578a81a5e6a
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002

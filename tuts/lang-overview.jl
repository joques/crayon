### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ f7dcdbb0-fa5e-4c55-a7f7-0d1efcb16871
using PlutoUI

# ╔═╡ 4b396108-e27b-4e1c-970d-986a9a86f644
using CSV, DataFrames,Missings, Dates, VegaLite

# ╔═╡ 07af8438-f461-11eb-0fa2-5d7a365aa410
md"# Julia Programming Language -- An Quick Overview"

# ╔═╡ 5700144a-6f39-44cb-b4b0-790b78317961
md"""
In this notebook, I will provide a quick overview of Julia as a programming language. Specifically, I will touch on the following items

1. Built-in Types
1. Data Structures
1. Control Flow
1. Functions
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
		for i2 in 2:8, j2 in 4:9
			println("Iteration of for loop ($i2,$j2) ")
		end
	end
end

# ╔═╡ a74c95e6-0b01-4215-899a-4578a81a5e6a
md"## Functions"

# ╔═╡ 845b0dde-930c-4ab9-8d56-24bedd9bc3fd
function aggreg(x::Int64, y::Int64)
	x + (2 * y)
end

# ╔═╡ 150f4ab6-3c3c-44e0-8131-96ee49787e16
aggreg(5,4)

# ╔═╡ 4a141cf6-ae81-4aa1-8246-a063f306276c
aggreg2(x::Int64, y::Int64) = x + (2 * y)

# ╔═╡ 92733e1a-8b48-417d-a4f9-f0d595f36797
function aggreg3(x::Int64, y::Int64)::Int64
	return x + (2 * y)
end

# ╔═╡ 0b255b91-ad84-40f1-ba44-b5f84a08c4b3
v1 = aggreg3(6,3)

# ╔═╡ 41282486-2696-4d80-8603-2bb315a637d6
typeof(v1)

# ╔═╡ 3e42076c-8899-4aa0-9507-f194ddfa3362
function greetings1(name::String):Nothing
	println("Hello $name")
	return nothing
end

# ╔═╡ 95d56bf5-3703-43dd-9d2b-a1ebc360a001
with_terminal() do
	greetings1("Samuel")
end

# ╔═╡ 864ec6d2-ee68-4f5f-9933-c060aef08e63
student_name(st::Student) = st.name

# ╔═╡ ece09231-6842-4ac5-8b7d-705b13505059
student_name(st1)

# ╔═╡ 8b2b1892-ad3c-41b2-b67a-60f265e977c4
function aggreg2(arr::Vector{Int64})::Int64
	acc = 0
	for i in arr
		acc += i
	end
	return acc
end

# ╔═╡ 64087beb-9e31-4fff-93f9-dd411c4fcc54
md"do you remember aggreg2? The mechanism here is called multiple dispatch"

# ╔═╡ e9b74832-f3d7-4625-bcb8-e5a7c28603e1
function aggreg2(x::Int64)::Int64
	return (x + 10)
end

# ╔═╡ f81a35cb-13cb-4f7b-9bca-d15759264b2b
aggreg2(5,4)

# ╔═╡ aa65b037-9188-4bf1-90b7-c3d950e606bc
aggreg2([1,2,3,4])

# ╔═╡ 1ed16d96-6102-4e09-b5b0-fb3260fe2353
aggreg2.([1,2,3,4])

# ╔═╡ d64188e7-e733-4546-a9d7-50b727fbee15
map(x -> x + 10, [1,2,3,4])

# ╔═╡ 0e95d1ef-d76a-4df5-a5f2-17e0c1e70077
md"and here is broadcasting"

# ╔═╡ 63cd234f-e08b-4ded-ac7a-1819ecb150e6
md"## Back to Packages"

# ╔═╡ e8123751-0d88-4822-a7e1-ec8202ac32f8
df1 = DataFrame(CSV.File("data/stateg.csv"))

# ╔═╡ 842c1053-610e-4f3a-a291-546c18ae44f5
begin
	df1 |>
	@vlplot(
		:line,
		transform=[{filter="datum.level === 'national'"}],
		x="date:t",
		y=:confirmed
	)
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
CSV = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
Dates = "ade2ca70-3891-5945-98fb-dc099432e06a"
Missings = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
VegaLite = "112f6efa-9a02-5b7d-90c0-432ed331239a"

[compat]
CSV = "~0.8.5"
DataFrames = "~1.2.2"
Missings = "~0.4.5"
PlutoUI = "~0.7.9"
VegaLite = "~2.6.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[CSV]]
deps = ["Dates", "Mmap", "Parsers", "PooledArrays", "SentinelArrays", "Tables", "Unicode"]
git-tree-sha1 = "b83aa3f513be680454437a0eee21001607e5d983"
uuid = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
version = "0.8.5"

[[Compat]]
deps = ["Base64", "Dates", "DelimitedFiles", "Distributed", "InteractiveUtils", "LibGit2", "Libdl", "LinearAlgebra", "Markdown", "Mmap", "Pkg", "Printf", "REPL", "Random", "SHA", "Serialization", "SharedArrays", "Sockets", "SparseArrays", "Statistics", "Test", "UUIDs", "Unicode"]
git-tree-sha1 = "344f143fa0ec67e47917848795ab19c6a455f32c"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "3.32.0"

[[ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f74e9d5388b8620b4cee35d4c5a618dd4dc547f4"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.3.0"

[[Crayons]]
git-tree-sha1 = "3f71217b538d7aaee0b69ab47d9b7724ca8afa0d"
uuid = "a8cc5b0e-0ffa-5ad4-8c14-923d3ee1735f"
version = "4.0.4"

[[DataAPI]]
git-tree-sha1 = "ee400abb2298bd13bfc3df1c412ed228061a2385"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.7.0"

[[DataFrames]]
deps = ["Compat", "DataAPI", "Future", "InvertedIndices", "IteratorInterfaceExtensions", "LinearAlgebra", "Markdown", "Missings", "PooledArrays", "PrettyTables", "Printf", "REPL", "Reexport", "SortingAlgorithms", "Statistics", "TableTraits", "Tables", "Unicode"]
git-tree-sha1 = "d785f42445b63fc86caa08bb9a9351008be9b765"
uuid = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
version = "1.2.2"

[[DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "4437b64df1e0adccc3e5d1adbc3ac741095e4677"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.9"

[[DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[DataValues]]
deps = ["DataValueInterfaces", "Dates"]
git-tree-sha1 = "d88a19299eba280a6d062e135a43f00323ae70bf"
uuid = "e7dc6d0d-1eca-5fa6-8ad6-5aecde8b7ea5"
version = "0.4.13"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[FileIO]]
deps = ["Pkg", "Requires", "UUIDs"]
git-tree-sha1 = "256d8e6188f3f1ebfa1a5d17e072a0efafa8c5bf"
uuid = "5789e2e9-d7fb-5bc7-8068-2c6fae9b9549"
version = "1.10.1"

[[FilePaths]]
deps = ["FilePathsBase", "MacroTools", "Reexport", "Requires"]
git-tree-sha1 = "919d9412dbf53a2e6fe74af62a73ceed0bce0629"
uuid = "8fc22ac5-c921-52a6-82fd-178b2807b824"
version = "0.8.3"

[[FilePathsBase]]
deps = ["Dates", "Mmap", "Printf", "Test", "UUIDs"]
git-tree-sha1 = "0f5e8d0cb91a6386ba47bd1527b240bd5725fbae"
uuid = "48062228-2e41-5def-b9a4-89aafe57970f"
version = "0.9.10"

[[Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[HTTP]]
deps = ["Base64", "Dates", "IniFile", "Logging", "MbedTLS", "NetworkOptions", "Sockets", "URIs"]
git-tree-sha1 = "44e3b40da000eab4ccb1aecdc4801c040026aeb5"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "0.9.13"

[[IniFile]]
deps = ["Test"]
git-tree-sha1 = "098e4d2c533924c921f9f9847274f2ad89e018b8"
uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f"
version = "0.5.0"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[InvertedIndices]]
deps = ["Test"]
git-tree-sha1 = "15732c475062348b0165684ffe28e85ea8396afc"
uuid = "41ab1584-1d38-5bbf-9106-f11c6c58b48f"
version = "1.0.0"

[[IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "81690084b6198a2e1da36fcfda16eeca9f9f24e4"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.1"

[[JSONSchema]]
deps = ["HTTP", "JSON", "ZipFile"]
git-tree-sha1 = "b84ab8139afde82c7c65ba2b792fe12e01dd7307"
uuid = "7d188eb4-7ad8-530c-ae41-71a32a6d4692"
version = "0.3.3"

[[LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[LinearAlgebra]]
deps = ["Libdl"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "0fb723cd8c45858c22169b2e42269e53271a6df7"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.7"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "Random", "Sockets"]
git-tree-sha1 = "1c38e51c3d08ef2278062ebceade0e46cefc96fe"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.0.3"

[[MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "f8c673ccc215eb50fcadb285f522420e29e69e1c"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "0.4.5"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[NodeJS]]
deps = ["Pkg"]
git-tree-sha1 = "905224bbdd4b555c69bb964514cfa387616f0d3a"
uuid = "2bd173c7-0d6d-553b-b6af-13a54713934c"
version = "1.3.0"

[[OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "bfd7d8c7fd87f04543810d9cbd3995972236ba1b"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "1.1.2"

[[Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[PlutoUI]]
deps = ["Base64", "Dates", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "Suppressor"]
git-tree-sha1 = "44e225d5837e2a2345e69a1d1e01ac2443ff9fcb"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.9"

[[PooledArrays]]
deps = ["DataAPI", "Future"]
git-tree-sha1 = "cde4ce9d6f33219465b55162811d8de8139c0414"
uuid = "2dfb63ee-cc39-5dd5-95bd-886bf059d720"
version = "1.2.1"

[[PrettyTables]]
deps = ["Crayons", "Formatting", "Markdown", "Reexport", "Tables"]
git-tree-sha1 = "0d1245a357cc61c8cd61934c07447aa569ff22e6"
uuid = "08abe8d2-0d0c-5749-adfa-8a2ac140af0d"
version = "1.1.0"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[Reexport]]
git-tree-sha1 = "5f6c21241f0f655da3952fd60aa18477cf96c220"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.1.0"

[[Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "4036a3bd08ac7e968e27c203d45f5fff15020621"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.1.3"

[[SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[SentinelArrays]]
deps = ["Dates", "Random"]
git-tree-sha1 = "a3a337914a035b2d59c9cbe7f1a38aaba1265b02"
uuid = "91c51154-3ec4-41a3-a24f-3f23e20d615c"
version = "1.3.6"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "Requires"]
git-tree-sha1 = "fca29e68c5062722b5b4435594c3d1ba557072a3"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "0.7.1"

[[SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "b3363d7460f7d098ca0912c69b082f75625d7508"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.0.1"

[[SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[Suppressor]]
git-tree-sha1 = "a819d77f31f83e5792a76081eee1ea6342ab8787"
uuid = "fd094767-a336-5f1f-9728-57cf17d0bbfb"
version = "0.2.0"

[[TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[TableTraitsUtils]]
deps = ["DataValues", "IteratorInterfaceExtensions", "Missings", "TableTraits"]
git-tree-sha1 = "8fc12ae66deac83e44454e61b02c37b326493233"
uuid = "382cd787-c1b6-5bf2-a167-d5b971a19bda"
version = "1.0.1"

[[Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "TableTraits", "Test"]
git-tree-sha1 = "d0c690d37c73aeb5ca063056283fde5585a41710"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.5.0"

[[Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[URIParser]]
deps = ["Unicode"]
git-tree-sha1 = "53a9f49546b8d2dd2e688d216421d050c9a31d0d"
uuid = "30578b45-9adc-5946-b283-645ec420af67"
version = "0.4.1"

[[URIs]]
git-tree-sha1 = "97bbe755a53fe859669cd907f2d96aee8d2c1355"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.3.0"

[[UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[Vega]]
deps = ["DataStructures", "DataValues", "Dates", "FileIO", "FilePaths", "IteratorInterfaceExtensions", "JSON", "JSONSchema", "MacroTools", "NodeJS", "Pkg", "REPL", "Random", "Setfield", "TableTraits", "TableTraitsUtils", "URIParser"]
git-tree-sha1 = "43f83d3119a868874d18da6bca0f4b5b6aae53f7"
uuid = "239c3e63-733f-47ad-beb7-a12fde22c578"
version = "2.3.0"

[[VegaLite]]
deps = ["Base64", "DataStructures", "DataValues", "Dates", "FileIO", "FilePaths", "IteratorInterfaceExtensions", "JSON", "MacroTools", "NodeJS", "Pkg", "REPL", "Random", "TableTraits", "TableTraitsUtils", "URIParser", "Vega"]
git-tree-sha1 = "3e23f28af36da21bfb4acef08b144f92ad205660"
uuid = "112f6efa-9a02-5b7d-90c0-432ed331239a"
version = "2.6.0"

[[ZipFile]]
deps = ["Libdl", "Printf", "Zlib_jll"]
git-tree-sha1 = "c3a5637e27e914a7a445b8d0ad063d701931e9f7"
uuid = "a5390f91-8eb1-5f08-bee0-b1d1ffed6cea"
version = "0.9.3"

[[Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╠═07af8438-f461-11eb-0fa2-5d7a365aa410
# ╠═f7dcdbb0-fa5e-4c55-a7f7-0d1efcb16871
# ╠═5700144a-6f39-44cb-b4b0-790b78317961
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
# ╠═845b0dde-930c-4ab9-8d56-24bedd9bc3fd
# ╠═150f4ab6-3c3c-44e0-8131-96ee49787e16
# ╠═4a141cf6-ae81-4aa1-8246-a063f306276c
# ╠═f81a35cb-13cb-4f7b-9bca-d15759264b2b
# ╠═92733e1a-8b48-417d-a4f9-f0d595f36797
# ╠═0b255b91-ad84-40f1-ba44-b5f84a08c4b3
# ╠═41282486-2696-4d80-8603-2bb315a637d6
# ╠═3e42076c-8899-4aa0-9507-f194ddfa3362
# ╠═95d56bf5-3703-43dd-9d2b-a1ebc360a001
# ╠═864ec6d2-ee68-4f5f-9933-c060aef08e63
# ╠═ece09231-6842-4ac5-8b7d-705b13505059
# ╠═8b2b1892-ad3c-41b2-b67a-60f265e977c4
# ╠═aa65b037-9188-4bf1-90b7-c3d950e606bc
# ╠═64087beb-9e31-4fff-93f9-dd411c4fcc54
# ╠═e9b74832-f3d7-4625-bcb8-e5a7c28603e1
# ╠═1ed16d96-6102-4e09-b5b0-fb3260fe2353
# ╠═d64188e7-e733-4546-a9d7-50b727fbee15
# ╠═0e95d1ef-d76a-4df5-a5f2-17e0c1e70077
# ╠═63cd234f-e08b-4ded-ac7a-1819ecb150e6
# ╠═4b396108-e27b-4e1c-970d-986a9a86f644
# ╠═e8123751-0d88-4822-a7e1-ec8202ac32f8
# ╠═842c1053-610e-4f3a-a291-546c18ae44f5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002

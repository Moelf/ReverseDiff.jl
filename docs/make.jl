using Documenter, ReverseDiff

makedocs(;
    modules=[ReverseDiff],
    sitename="ReverseDiff.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", nothing) == "true",
        canonical="http://www.juliadiff.org/ReverseDiff.jl",
    ),
    pages=[
        "Home" => "index.md",
        "Limitation of ReverseDiff" => "limits.md",
        "API" => "api.md",
    ],
    strict=true,
    checkdocs=:exports,
)

deploydocs(;
    repo="github.com/JuliaDiff/ReverseDiff.jl", push_preview=true,
)

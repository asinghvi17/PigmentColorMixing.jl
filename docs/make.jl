using PigmentColorMixing
using Documenter

DocMeta.setdocmeta!(PigmentColorMixing, :DocTestSetup, :(using PigmentColorMixing); recursive=true)

makedocs(;
    modules=[PigmentColorMixing],
    authors="Anshul Singhvi <anshulsinghvi@gmail.com>, Adrian Hill <adrian.hill@mailbox.org>, and contributors",
    sitename="PigmentColorMixing.jl",
    format=Documenter.HTML(;
        canonical="https://asinghvi17.github.io/PigmentColorMixing.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/asinghvi17/PigmentColorMixing.jl",
    devbranch="main",
)

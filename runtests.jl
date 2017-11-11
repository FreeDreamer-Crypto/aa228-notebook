using NBInclude

for d in readdir(".")
    if endswith(d, ".ipynb") && !startswith(d, "08-Markov") && !startswith(d, "09-") && !startswith(d, "11-") && !startswith(d, "16-") && !startswith(d, "POM") # ignore MDP notebook because it fails for some reason
        stuff = "using NBInclude; nbinclude(\"" * d * "\")"
        cmd = `julia -e $stuff`
        run(cmd)
    end
end

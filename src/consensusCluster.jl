try 
    using Clustering
catch
    using Pkg
    Pkg.add("Clustering")
end

using Clustering

M = rand(5,5)
M += M'; # symmetric distance matrix (optional)
result = hclust(M, linkage=:single)

distance = "euclidean"


function resample(data, proportion)

    n = Int(size(data,1) * proportion)
    s = rand(1:size(data,1), n)
    return s, data[s,:]
end


randWorkers = rand(1:nworkers(), numCodes)
    X = zeros(numCodes, nCols)
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

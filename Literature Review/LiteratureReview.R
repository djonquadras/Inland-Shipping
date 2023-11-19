library(bibliometrix)
library(openxlsx)

M1 = convert2df("Literature Review/datasets/savedrecs.bib", dbsource = "wos", format = "bibtex")
M2 = convert2df("Literature Review/datasets/scopus.bib", dbsource = "scopus", format = "bibtex")

M = bibliometrix::mergeDbSources(M1, M2, remove.duplicated = TRUE)
write.xlsx(M, "Literature Review/Results/selectedPapers.xlsx")
biblioshiny()
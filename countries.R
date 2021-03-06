countries = read.csv("countries.csv")
rownames(countries) = countries$country
as.numeric(as.character(countries$count_users))
as.numeric(as.character(countries$ms_played))
as.numeric(as.character(countries$acct_age_weeks))
as.numeric(as.character(countries$count_unique_tracks))
as.numeric(as.character(countries$session_length))

res.pca  = PCA(countries[-1], scale.unit = TRUE, ncp = 5, graph = T);

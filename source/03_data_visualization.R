
options(stringsAsFactors=FALSE)

# load manhattan_plot function
source(here::here("source", "manhattan_plot.R"))

# load data
load(here::here("data", "clean_twas_data.Rdata"))

# manhattan plot
mplot <- manhattan_plot(twas_data, label_nonsig=TRUE, sig_level=sig_level) + 
	facet_grid(dataset ~ .)


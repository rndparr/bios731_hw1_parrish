
options(stringsAsFactors=FALSE)

# load dplyr
library(dplyr)

# load cleaned data
load(here::here("data", "clean_twas_data.Rdata"))

# columns to keep
keep_cols <- c('CHROM', 'GeneStart', 'GeneEnd', 'GeneName', 'n_snps', 'dataset', 'Pvalue')

# filter significant genes
twas_table <- twas_data[twas_data$Pvalue <= sig_level, keep_cols]

# get top 5 significant genes for each model
twas_table <- twas_table %>% 
	group_by(dataset) %>%
	top_n(-5, Pvalue) %>%
	arrange(Pvalue)


# convert to string for better display as kable
twas_table$Pvalue <- as.character(signif(twas_table$Pvalue, 3))
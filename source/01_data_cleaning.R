
options(stringsAsFactors=FALSE)

# load data is output from all chromosomes from two different datasets 
data_path  <- here::here("data", "manplot_TWAS_data.txt")

twas_data <- read.table(data_path, header=TRUE, sep='\t')

## modify dataframe to be in correct format
	## required columns: 'CHROM', 'POS', 'Pvalue', 'label_text'
	## if you plan to facet, the dataframe passed to manhattan_plot() must have that column
	## you can include other columns
	## only include a string in the 'label_text' column if you want that label to show in the plot; use empty string (i.e. '', "") for all other rows

twas_data$POS <- twas_data$GeneStart

# remove excess whitespace from gene names (helpful for making labels/matching genes by name)
twas_data$GeneName <- trimws(as.character(twas_data$GeneName))

# recommend calculating Pvalue from the Zscore (if original output may have rounding issues, be read-in as a character, etc.)
twas_data$Pvalue <- exp(pchisq(twas_data[['SPred_Z']]^2, 1, lower.tail=FALSE, log.p=TRUE))
# # can also use the SPred pvalue for plotting; rename 'SPred_PVAL'
# colnames(twas_data)[which(colnames(twas_data) == 'SPred_PVAL')] <- 'Pvalue'

# if your TargetID may be an ensemble ID with version number but this may not be desirable (e.g. for matching between datasets where one does not include the version, etc.); this is a convenient way to remove the version number
twas_data$TargetID_w_version <- twas_data$TargetID # ex: ENSG00000223972.4
twas_data$TargetID <- do.call(rbind, strsplit(twas_data$TargetID, '.', fixed=TRUE))[, 1] # ex: ENSG00000223972

# NOTE: labels may not show up in plot viewing window-check the output file


# make new label_text column from GeneName
twas_data$label_text <- twas_data$GeneName

# only keep label_text value for genes that are in labeled_genes
twas_data[with(twas_data, !(GeneName %in% labeled_genes)), 'label_text'] <- ''

# save data
save(twas_data, file = here::here("data", "clean_twas_data.Rdata"))
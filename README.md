# Example TWAS Analysis


---

- [Dataset](#dataset)
- [Directories \& Files](#directories-and-files)
- [Reproducibility](#reproducibility)
- [Session Info](#session-info)


---


## Dataset


This file produces a Manhattan plot from a subset of results from real transcriptome-wide association study (TWAS) of Parkinson's disease using two different gene expression prediction models. Full details of the models and TWAS can be found in:

*SR-TWAS: Leveraging Multiple Reference Panels to Improve Transcriptome-Wide Association Study Power by Ensemble Machine Learning.*
Randy L. Parrish, Aron S. Buchman, Shinya Tasaki, Yanling Wang, Denis Avey, Jishu Xu, Philip L. De Jager, David A. Bennett, Michael P. Epstein, Jingjing Yang.
*Nature Communications* **15**, 6646 (2024). doi: [https://doi.org/10.1038/s41467-024-50983-w](https://doi.org/10.1038/s41467-024-50983-w)


---

## Directories and Files

```
.
├── README.md
├── analysis
│ ├── final_report.Rmd
│ └── final_report.html
├── data
│ ├── clean_twas_data.Rdata
│ └── manplot_TWAS_data.txt
├── results
│ └── figure1-1.png
└── source
    ├── 01_data_cleaning.R
    ├── 02_data_analysis.R
    ├── 03_data_visualization.R
    └── manhattan_plot.R

```

 - `analysis` contains the final report files
 - `data` contains the raw (`manplot_TWAS_data.txt`) and clean data (`clean_twas_data.Rdata`)
 - `results` contains the generated figure
 - `source` contains the R files for conducting data cleaning/analysis/visualization
 	- `01_data_cleaning.R` cleans the raw data, saves `clean_twas_data.Rdata`
 	- `02_data_analysis.R` creates table for display in final report
 	- `03_data_visualization.R` produces the visualizations
 	- `manhattan_plot.R` provides the main function for producing the Manhattan plot

---



## Reproducibility


### Required R packages
- dplyr
- ggplot2
- ggrepel
- here
- knitr

```R
install.packages(c("dplyr","ggplot2","ggrepel","here","knitr"))
```



---




## Session Info

```R
## R version 4.2.3 (2023-03-15)
## Platform: x86_64-apple-darwin17.0 (64-bit)
## Running under: macOS Big Sur ... 10.16
## 
## Matrix products: default
## BLAS:   /Library/Frameworks/R.framework/Versions/4.2/Resources/lib/libRblas.0.dylib
## LAPACK: /Library/Frameworks/R.framework/Versions/4.2/Resources/lib/libRlapack.dylib
## 
## locale:
## [1] C/UTF-8/C/C/C/C
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] dplyr_1.1.4   here_1.0.2    ggrepel_0.9.6 ggplot2_3.5.0
## 
## loaded via a namespace (and not attached):
##  [1] Rcpp_1.1.1       pillar_1.9.0     bslib_0.6.1      compiler_4.2.3  
##  [5] jquerylib_0.1.4  tools_4.2.3      digest_0.6.35    jsonlite_2.0.0  
##  [9] evaluate_1.0.5   lifecycle_1.0.4  tibble_3.2.1     gtable_0.3.4    
## [13] pkgconfig_2.0.3  rlang_1.1.7      cli_3.6.5        yaml_2.3.12     
## [17] xfun_0.55        fastmap_1.1.1    withr_3.0.2      knitr_1.51      
## [21] generics_0.1.3   vctrs_0.6.5      sass_0.4.10      rprojroot_2.1.1 
## [25] grid_4.2.3       tidyselect_1.2.1 glue_1.8.0       R6_2.6.1        
## [29] fansi_1.0.6      rmarkdown_2.30   farver_2.1.1     magrittr_2.0.3  
## [33] scales_1.3.0     htmltools_0.5.9  colorspace_2.1-0 labeling_0.4.3  
## [37] utf8_1.2.4       munsell_0.5.0    cachem_1.0.8

```



---


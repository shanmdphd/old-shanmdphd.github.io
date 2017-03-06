Args <- commandArgs(TRUE)
Rmd <- paste0(Args[1], ".Rmd")
Tufte <- paste0(Args[1], "_tufte.html")

rmarkdown::render(Rmd, output_format = 'html_document', encoding = 'UTF-8')
rmarkdown::render(Rmd, output_file = Tufte, output_format = "tufte::tufte_html", encoding = "UTF-8")

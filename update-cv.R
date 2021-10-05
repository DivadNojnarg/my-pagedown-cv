update_cv <- function() {
  rmarkdown::render("david_granjon_cv.Rmd", output_format = "html_document")
  cli::cli_alert_success("html output generated!")
  fs::file_copy("custom.css", "docs/custom.css", overwrite = TRUE)
  fs::file_copy("david_granjon_cv.html", "docs/index.html", overwrite = TRUE)
  cli::cli_alert_success("File copied to /docs!")
}
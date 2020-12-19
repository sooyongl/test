inp_file_list <- fs::dir_ls("C:/Users/sooyo/OneDrive/Desktop/zip/syntax", recurse = T, regexp = ".inp$")

inp_file_path <- inp_file_list[1]
inp <- paste("Mplus", inp_file_path)

system(
  inp,
  show.output.on.console = F,
  invisible = F,
  wait = TRUE
)


invisible(shell(cmd = "batchfile.bat", intern = TRUE))

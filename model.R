library(cmdstanr)

cat("Building model\n")
dat <- cmdstan_model("model.stan")

cat("Saving model\n")
if(Sys.info()["sysname"] == "Windows"){

    file.copy("model.exe", file.path("compiled", "model.exe"))

    unlink("model.exe")

    cat("Windows model built.\n")

} else if (Sys.info()["sysname"] == "Darwin"){

    file.copy("model", file.path("compiled", "model_mac"))

    unlink("model")

    cat("Mac model built.\n")
}
cat("Done!")
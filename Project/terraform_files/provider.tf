provider "google" {
  project     = "mm-iti-cairo-2023"
  credentials = file("mm-iti-cairo-2023-53e3eb213975.json")
  region      = "us-east1"
}
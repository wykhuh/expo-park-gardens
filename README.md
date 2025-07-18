# Biodiversity of the Gardens at Exposition Park

Comparison of the biodiversity for the Natural History Museum of Los Angeles County Nature Garden, which is full of native plants, and Rose Garden, which is full of roses and lawn grass.

The analysis and website is made with R and Quarto.

## Install libraries

I use renv to manage the R packages. To install the R packages, do this in the R Console:

```bash
renv::restore()
```

## Publish site

Run the `deploy.sh` script in the terminal. This will render the html files and push the files to gh-pages.

```bash
bash deploy.sh
```



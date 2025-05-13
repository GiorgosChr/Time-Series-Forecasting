# Time-Series-Forecasting

This project uses a Graph Convolution Network (GCN) using PyTorch to perform time-series forecasting on weather data.

## Download Datasets
To get the required data from [Kaggle](https://www.kaggle.com/datasets/guillemservera/global-daily-climate-data) use the kaggle CLI (`pip install --user kaggle` might be required).

```bash
cd Weather\ Forecast
source get_datasets.sh
```
This script will download and unzip the data in `data/global-daily-climate-data`. There are 3 files, `cities.csv`, `countries.csv` and `daily_weather.parquet` all of which are described in the [The Weather Dataset site](https://www.kaggle.com/datasets/guillemservera/global-daily-climate-data).
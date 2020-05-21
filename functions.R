library(tidyverse)
library(zoo)

plot_bar_rolling_avg <- function(df, col, bar_fill="steelblue", 
                                 bar_outline="black", line_col="darkblue", line_wid=2) {
  ggplot(data = df, aes(x = date, y = get(col))) +
    geom_bar(stat="identity", fill=bar_fill, color=bar_outline) +
    geom_line(aes(y=rollmean(get(col), 7, na.pad=TRUE)), color=line_col, 
                             size=line_wid, color="black")
}
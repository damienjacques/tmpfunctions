library(ggplot2)

plotTimeSeriesTransaction <-
  function(transaction_by_day,
           date_field,
           amount_field,
           xlim,
           cr_db_field) {
    g <- ggplot(transaction_by_day,
           aes(x = date_field, y = amount_field)) +
      geom_col(position = "identity", aes(fill = get(cr_db_field))) +
      geom_col(position = "identity", width = 1) + theme_minimal() +
      xlim(xlim) +
      ylab("Transactions total amount") + xlab("Date") + scale_fill_manual(values = c("darkgreen", "red"))
    return(g)
  }

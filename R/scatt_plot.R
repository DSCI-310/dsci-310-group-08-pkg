#' Scatter plot function
#'
#' This function plots a scatter graph given the data and the column names to
#' visualize and also allows to edit the graphs axis labels and plot dimensions
#'
#' @param data The data which should be visualized passed as a dataframe
#' @param x_axis_data The column name of the passed data which should be displayed on the x axis passed as a dataframe which is the name of the column
#' @param y_axis_data The column name of the passed data which should be displayed on the y axis passed as a dataframe which is the name of the column
#' @param x_axis_label Label which will be displayed in the plot for the x axis passed as a string
#' @param y_axis_label Label which will be displayed in the plot for the y axis passed as a string
#' @param title_label Label which will be displayed on the top of the plot passed as a string
#' @param text_size Text size applied for all text in the plot passed as a numeric value
#'
#' @return The generated plot with the applied parameters
#' @export
#' @examples
#' data_test <- data.frame(
#' revenue = c(1,2,3),
#' budget = c(5,6,7)
#' )
#' scatter_plot = plot_scatter_graph(data=data_test,
#' x_axis_data=revenue,
#' y_axis_data=budget, x_axis_label="Revenue",
#' y_axis_label="Budget", title_label = "Scatter Plot", text_size=20)
#' scatter_plot
plot_scatter_graph <- function(data, x_axis_data,
                               y_axis_data, x_axis_label, y_axis_label, title_label,
                               text_size) {

  g <- ggplot2::ggplot(data, ggplot2::aes(x = {{x_axis_data}}, y = {{y_axis_data}})) +
    ggplot2::geom_point() +
    ggplot2::labs(x = x_axis_label, y = y_axis_label, title = title_label ) +
    ggplot2::theme(text = ggplot2::element_text(size=text_size))

  return(g)

}




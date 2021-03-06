% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/updater.R
\name{stop_polling}
\alias{stop_polling}
\title{stop_polling}
\usage{
stop_polling()
}
\description{
Stops the polling. Requires no parameters.
}
\examples{
\dontrun{
# Supperassign the updater
updater <<- Updater(token = 'TOKEN')

# Example of a 'kill' command
kill <- function(bot, update){
  bot$sendMessage(chat_id = update$message$chat_id,
                  text = "Bye!")
  # Clean 'kill' update
  bot$getUpdates(offset = update$update_id + 1)
  # Stop the updater polling
  updater$stop_polling()
}

updater$dispatcher$add_handler(CommandHandler('kill', kill))

updater$start_polling(verbose = T) # Send '/kill' to the bot
}
}

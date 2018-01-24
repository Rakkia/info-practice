users <- paste("User", 1:100)
owed <- runif(100, -50, 100)
paid <- runif(100, 50, 100)
bank <- data.frame(users, owed, paid)
bank$difference <- bank$paid - bank$owed
bank$more <- bank$diff > 0
user_57 <- bank[57, "owed"]
users_that_paid <- sum(bank$more ==TRUE)
print(users_that_paid)
the_user <- bank$users[bank$difference == max(bank$difference)]
print(the_user)

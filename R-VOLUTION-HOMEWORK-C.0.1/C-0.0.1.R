
# dslabs paketini yükleyin
install.packages("dslabs")
library(dslabs)

# na_example veri setini yükleyin
data("na_example")

# Veri setinde kaç adet NA bulunduğunu kontrol edin
na_count <- sum(is.na(na_example))
print(paste("Veri setinde", na_count, "NA değeri bulunmaktadır."))

# NA değerlerini 2025 ile değiştirin
cleaned_data <- na_example
cleaned_data[is.na(cleaned_data)] <- 2025

# Güncellenmiş veri setinde eksik değer olup olmadığını kontrol edin
clean_na_count <- sum(is.na(cleaned_data))
print(paste("Güncellenmiş veri setinde", clean_na_count, "NA değeri bulunmamaktadır."))

# 2025 sayısının veri setinde kaç kez geçtiğini kontrol edin
value_count <- sum(cleaned_data == 2025)
print(paste("2025 sayısı", value_count, "kez veri setinde bulunmaktadır."))


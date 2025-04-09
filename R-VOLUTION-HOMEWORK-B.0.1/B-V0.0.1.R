str(mtcars)

# Sayısal özet istatistikleri hesaplayan fonksiyon
my_summary_stats <- function(R) {
  if (is.numeric(R) == FALSE) {  # Sayısal veri değilse
    print("Girdi sayısal olmalıdır.")
  } else {
    # Sayısal veriler için özet istatistikleri hesapla
    summary_list <- list(
      Mean = mean(R), 
      Median = median(R), 
      SD = sd(R), 
      Min = min(R), 
      Max = max(R)
    )
    return(summary_list)  # Sonucu döndür
  }
}

# mtcars veri seti üzerinde döngü ile sayısal sütunlarda işlem
for (i in 1:ncol(mtcars)) {  
  R <- mtcars[, i]  # i. sütunu al
  
  # Eğer sütun sayısalsa işle
  if (is.numeric(R)) {  
    print(paste("Sütun:", colnames(mtcars)[i]))  # Sütun adını yazdır
    
    result <- my_summary_stats(R)  # Özet istatistikleri al
    
    print("Sonuclar:")
    print(paste("Mean:", round(result$Mean, 2)))
    print(paste("Median:", round(result$Median, 2)))
    print(paste("SD:", round(result$SD, 2)))
    print(paste("Min:", round(result$Min, 2)))
    print(paste("Max:", round(result$Max, 2)))
    
    print("+++++++++")  # Ayırıcı artı ekle
  }
}

# mtcars veri setindeki sayısal sütunlarda apply kullanarak fonksiyonu uygulama
apply(mtcars, 2, function(R) {
  if (is.numeric(R)) {  # Sayısal veri kontrolü
    result <- my_summary_stats(R)  # Özet istatistikleri al
    
    print("Sonuclar:")
    print(paste("Mean:", round(result$Mean, 2)))
    print(paste("Median:", round(result$Median, 2)))
    print(paste("SD:", round(result$SD, 2)))
    print(paste("Min:", round(result$Min, 2)))
    print(paste("Max:", round(result$Max, 2)))
    
    print("**************")  # Ayırıcı yıldız ekle
  }
})

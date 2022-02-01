
--Assignment - 1
(--DATABASE = CHINOOK)
--Instructions:  
--There are multiple questions.
--Use chinook database to answer the questions.

--QUESTİONS:

--1. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, sorted first by CustomerId (in ascending order), and then by total dollar amount  (in descending order).

--2. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, but this time sorted first by total dollar amount (in descending order), and then by CustomerId (in ascending order).

--3. Compare the results of these two queries above. How are the results different when you switch the column you sort on first? (Explain it in your own words.)

--4. Write a query to pull the first 10 rows and all columns from the invoices table that have a dollar amount of total greater than or equal to 10.

--5. Write a query to pull the first 5 rows and all columns from the invoices table that have a dollar amount of total less than 10.

--6. Find all track names that start with 'B' and end with 's'.

--7. Use the invoices table to find all information regarding invoices whose billing address is USA or Germany or Norway or Canada and invoice date is at any point in 2010, sorted from newest to oldest.

--ANSWERS

1.SELECT InvoiceId, CustomerId, total 
  FROM invoices 
  ORDER BY CustomerId ASC, total DESC;

2.SELECT InvoiceId, CustomerId, total 
  FROM invoices 
  ORDER BY total DESC, CustomerId ASC;

3.--Number 1 query returns a result which lists 59 different CustomerId in an ascending order. 
  --In this list, for each CustomerId  who has the hihgest total dolar comes first.

  --Number 2 query returns a result according to the total dolar beginning from the  highest to the lower.
  --In this list the CustomerId's are in a mixed order cooresponding to the their total dolar amounts.

4.SELECT * 
  FROM invoices 
  WHERE total >= 10 
  LIMIT 10;

5.SELECT * 
  FROM invoices 
  WHERE total < 10 
  LIMIT 5;

6.SELECT * 
  FROM tracks
  WHERE  name like "B?" AND "?S";

7.SELECT * 
  FROM invoices
  WHERE BillingCountry IN ("USA", "Germany", "Norway", "Canada") AND InvoiceDate like 	"%2010%";


--Ödev - 1
(--VERİTABANI = CHINOOK)
--Talimatlar:
--Birden fazla soru var.  
--Soruları cevaplamak için chinook veritabanını kullanın .

--SORULAR:

--1. Her fatura için FaturaKimliği, MüşteriKimliği ve toplam dolar tutarını önce MüşteriKimliğine göre (artan düzende) ve ardından toplam TL tutarına göre (azalan düzende) sıralayan bir sorgu yazın.

--2. Her fatura için FaturaKimliği, MüşteriKimliği ve toplam dolar tutarını gösteren bir sorgu yazın, ancak bu sefer önce toplam dolar tutarına göre (azalan düzende) ve ardından MüşteriKimliği'ne göre (artan düzende) sıralayın.

--3. Yukarıdaki iki sorgunun sonuçlarını karşılaştırın. İlk sıraladığınız sütunu değiştirdiğinizde sonuçlar nasıl farklı oluyor? (Kendi kelimelerinizle açıklayın.)

--4. Faturalar tablosundan dolar toplamı 10'a eşit veya daha büyük olan ilk 10 satırı ve tüm sütunları

--çekmek için bir sorgu yazın . 

--5. Faturalar tablosundan ilk 5 satırı ve tüm sütunları çekmek için bir sorgu yazın . toplam tutarı 10'dan az olan.

--6. 'B' ile başlayan ve 's' ile biten tüm parça adlarını bulun.

--7.  Fatura adresi ABD veya Almanya veya Norveç veya Kanada olan ve fatura tarihi 2010 yılının herhangi bir noktasında olan faturalarla ilgili tüm bilgileri en yeniden en eskiye doğru sıralayarak bulmak için fatura tablosunu kullanın .

--CEVAPLAR

1.SELECT InvoiceId, CustomerId, total 
  FROM invoices 
  ORDER BY CustomerId ASC, total DESC;

2.SELECT InvoiceId, CustomerId, total 
  FROM invoices 
  ORDER BY total DESC, CustomerId ASC;

3.--1 numaralı sorgu, artan sırada 59 farklı CustomerId listeleyen bir sonuç döndürür. 
  --Bu listede en yüksek toplam dolara sahip olan her Müşteri Kimliği için ilk sırada yer almaktadır.

  --2 numaralı sorgu, en yüksekten en düşüğe doğru toplam dolara göre bir sonuç döndürür.
  --Bu listede Müşteri Kimlikleri, toplam dolar tutarlarına karşılık gelen karışık bir düzendedir.

4.SELECT * 
  FROM invoices 
  WHERE total >= 10 
  LIMIT 10;

5.SELECT * 
  FROM invoices 
  WHERE total < 10 
  LIMIT 5;

6.SELECT * 
  FROM tracks
  WHERE  name like "B&" AND "&S";

7.SELECT * 
  FROM invoices
  WHERE BillingCountry IN ("USA", "Germany", "Norway", "Canada") AND InvoiceDate like 	"%2010%";

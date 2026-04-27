use sis04t25;
1. calcule a soma de quantity de todos os registros na tabela.
select sum(Quantity) from OrderDetails;

2. encontre a soma de quantity onde o productid é maior que 10.
select sum(Quantity) from OrderDetails where ProductID > 10;

3. determine a soma de quantity onde o orderid seja menor que 100.
select sum(Quantity) from OrderDetails where OrderID < 100;

4. calcule a soma de quantity para os registros onde o orderdetailid seja par.
select sum(Quantity) from OrderDetails where OrderDetailID % 2 = 0;

5. obtenha a soma de quantity para os registros com orderid igual a 200.
select sum(Quantity) from OrderDetails where OrderID = 200;

6. calcule a soma de quantity para os registros com productid entre 5 e 15.
select sum(Quantity) from OrderDetails where ProductID between 5 and 15;

7. determine a soma de quantity para os registros onde quantity seja maior que 20.
select sum(Quantity) from OrderDetails where Quantity > 20;

8. encontre a soma de quantity onde o orderid seja ímpar.
select sum(Quantity) from OrderDetails where OrderID % 2 = 1;

9. calcule a soma de quantity onde o productid seja divisível por 5.
select sum(Quantity) from OrderDetails where ProductID % 5 = 0;

10. determine a soma de quantity para registros com orderdetailid entre 50 e 100.
select sum(Quantity) from OrderDetails where OrderDetailID between 50 and 100;

11. filtre os registros com quantity maior que 15 e calcule a soma de quantity.
select sum(Quantity) from OrderDetails where Quantity > 15;

12. obtenha a soma de quantity onde o productid esteja nos valores 3, 6 e 9.
select sum(Quantity) from OrderDetails where ProductID in (3,6,9);

13. determine a soma de quantity onde o orderid termine com o número 0.
select sum(Quantity) from OrderDetails where OrderID like '%0';

14. calcule a soma de quantity onde o productid seja maior que 20.
select sum(Quantity) from OrderDetails where ProductID > 20;

15. encontre a soma de quantity onde o orderdetailid seja menor que 30.
select sum(Quantity) from OrderDetails where OrderDetailID < 30;

16. determine a soma de quantity para os registros onde quantity esteja entre 10 e 30.
select sum(Quantity) from OrderDetails where Quantity between 10 and 30;

17. filtre os registros onde orderid seja múltiplo de 4 e calcule a soma de quantity.
select sum(Quantity) from OrderDetails where OrderID % 4 = 0;

18. calcule a soma de quantity onde o productid não esteja nos valores 1, 2 e 3.
select sum(Quantity) from OrderDetails where ProductID not in (1,2,3);

19. obtenha a soma de quantity onde o orderdetailid seja maior que 200.
select sum(Quantity) from OrderDetails where OrderDetailID > 200;

20. determine a soma de quantity onde o orderid comece com o número 1.
select sum(Quantity) from OrderDetails where OrderID like '1%';

21. calcule a soma de quantity onde o productid seja divisível por 7.
select sum(Quantity) from OrderDetails where ProductID % 7 = 0;

22. encontre a soma de quantity onde o orderdetailid termine com 5.
select sum(Quantity) from OrderDetails where OrderDetailID like '%5';

23. determine a soma de quantity para os registros onde quantity seja menor que 12.
select sum(Quantity) from OrderDetails where Quantity < 12;

24. filtre os registros onde orderid seja igual a 300 e calcule a soma de quantity.
select sum(Quantity) from OrderDetails where OrderID = 300;

25. calcule a soma de quantity para os registros com productid entre 15 e 25.
select sum(Quantity) from OrderDetails where ProductID between 15 and 25;
# E-commerce-Landshop
Софийски университет
„Св. Климент Охридски”
 Факултет по Математика и Информатика
Курсова работа по
„Системи за Е-бизнес”
на тема:
„Електронна търговия със стоки за бита”
(Документация)
Изготвил:     				           Димитър Антониев Димов
Специалност:				     Информационни системи
Курс:										  Четвърти
Факултетен номер:								  71538
Група:											 Трета
Преподавател:					  Доц. д-р Павел Павлов
София 2018
 
Съдържание:
1. Описание на курсовата работа
2. Архитектура и дизайн на системата
3. Описание на магазина
4. Начална страница на сайта
5. Описание на Базата от Данни
6. Описание на категориите и отделите
7. Описание на съхранените процедури
 
1. Описание на курсовата работа
Курсовата работа на тема „Електронна търговия със земи” представлява система за закупуване на парцели земеделска земя на територията на България. Системата разполага с два отдела за стоки – за Северна и Южна България. Към всеки отдел има по 3 категории – Източна, Централна и Западна България.

2. Архитектура и дизайн на системата
2.1. Използвани средства и технологии
За изготвянето на проекта са използвани ASP.NET и C#
Използвани на следните софтуерни продукти:
o	Microsoft SQL Server 2012
o	Microsoft Visual Studio 2012
o	SQL Server Management Studio Express
	Използвана е трислойна архитектура
1.	Презентационен слой – предоставя потребителския интерфейс. Освен, че служи комуникира със останалите слоеве, презентационният слой предоставя различни видове информация на потребителя. Реализиран на ASP.NET
2.	Бизнес слой – реализира логиката на приложението. Служи за посредник между другите два слоя. Реализиран е на C#
3.	Слой за съхранение и обработка на базата данни – Тук информацията се съхранява и достъпва, в базата данни информацията се съхранява и е независима от бизнес логиката.Бизнес слоят комуникира с базата от данни посредством съхранени процедури.

2.2. Етапи на разработка
Проектът е изграден на 3 етапа:
•	Първи етап – реализирани са отделите и категориите на парцелите зяма, описание на стоките, търсене в каталога, администриране на каталога на стоките.
•	Втори етап – реализирана е потребителската кошница(количка) за пазаруване, която съхранява данните си в локалната БД, редактиране и показване на нейното съдържание, обработване на потребителските поръчки и система за  препоръки на стоки.
•	Трети етап – реализирана е частта за потребителските сметки, обработване на поръчки и проверка за наличност в склад.

3. Описание на магазина
Множеството от функционалности включва:
	- Създаване и показване на каталог от парцели земя, което включва и управлението на детайлите на самите парцели.
	- Търсене на парцели по име, категория и отдел.
- Създаване на списък с препоръчани продукти за даден потребител.
	- Администриране на парцелите, т.е. на каталога, на отделите, на категориите и на техните характеристики.
	- Използване на потребителската кошница за пазаруване (включва се редактиране и показване на избраните продукти)
	- Модул за потребителските детайли – сметки (дебитни карти), всички заявени поръчки.
- Редактиране на потребителския профил.


4. Начална страница на сайта




 

 
5. Описание на Базата от Данни
Базата данни е създадена на Microsoft SQL Server 2012 и съдържа 13 таблици:. 
•	Таблица  Product -Тази таблица съдържа инормацията за продуктите, които се предлагат в онлайн магазина.
o	Първичен ключ - ProductID
       Колоните,които тя съдържа са:
o	ProductID e от тип int и е ункален за всеки запис.
o	Name e oт тип nvarchar и е с максимална дължина 50 символа, не може да бъде нулев.
o	Description е от тип nvarchar и е с максимална дължина.
o	Price e от тип money, не може да бъде нулев.
o	Thumbnail(малка картинка) е от тип nvarchar  и е с максимална дължина 50 символа.
o	Image(голяма картинка) е от тип nvarchar и е с максимална дължина 50 символа.
o	PromoFront(промоция,която да се вижда на главната страница) - е от тип bit, не може да бъде нулев.
o	PromoDept(промоция в дадения отдел) - e от тип bit, не може да бъде нулев.
•	Таблица ProductCategory – Тази таблица съдържа информация за това какви са категориите за всеки един от парцелите в магазина. 
o	Външен ключ – ProductID  към таблицата Product.
o	Първичен ключ – CategoryID към таблицата Catagory. 
       Kолоните, които тя съдържа са:
o	ProductID e от тип int.
o	CategoryID е от тип int.
•	Tаблица Category - Тази таблица съдържа всички категории за всеки от отделите.
o	Първичен ключ – CategoryID
o	Външен ключ – DepartmentID към таблица Department.
        Kолоните,които тя съдържа са:
o	CategoryID е от тип int и е уникален за всеки запис.
o	DepartmentID е от тип int.
o	Name e от тип nvarchar и е с максимална дължина 50 символа.
o	Description е от тип nvarchar и е с максимална дължина 1000 символа, използва се като ToolTip в графичния интерфейс.
•	Таблица Department – Тази таблица съдържа всички налични отдели в магазина.
o	Първичен ключ - DepartmentID
       Колоните,които тя съдържа са:
o	DepartmentID е от тип int и е уникален за всеки запис.
o	Name e oт тип nvarchar и е с максимална дължина 50 символа, не може да бъде нулев.
o	Description е от тип nvarchar и е с максимална дължина 1000 символа.
•	Таблица ProductAttributeValue - Тази таблица съдържа информация за това какви са атрибутите за всеки от филмите в базата.
o	Външен ключ – ProductID към таблицата Product.
o	Външен ключ – AttributeValueID към таблицата AttributeValue.
o	Двете колони заедно са composite primary key за тази таблица.
        Колоните, които тя съдържа са:
o	ProductID е от тип int.
o	AttributeValueID е от тип int.
•	Таблица  AttributeValue - Тази таблица съдържа всички възможни стойности, които могат да имат атрибутите.
o	Първичен ключ – AttributeValueID
o	Външен ключ – AttributeID  към таблицата Attribute.
       Колоните, които тя съдържа са:
o	AttributeValueID е от тип int и е уникален за всеки запис.
o	AttributeID е от тип int.
o	Value е от тип nvarchar и е с максимална дължина 100 символа, не може да бъде нулев.
•	Таблица Attribute - Тази таблица съдържа всички възможни атрибути, които притежават артикулите в магазина.
o	Първичен ключ - AttributeID
       Колоните,които тя съдържа са:
o	AttributeID е от тип int и е уникален за всеки запис.
o	Name е от тип nvarchar и е с максимална дължина 100 символа, не може да бъде нулев.
•	Таблица ShoppingCart – Тази таблица съдържа информация за потребителската кошница(количка).
o	Външен ключ - CartID
o	Външен ключ – ProductID към таблицата Product.
o	Колоните (CartID, ProductID) заедно са composite primary key за тази таблица.
Колоните, които тя съдържа са:
o	CartID е от тип int и е уникален за всеки запис.
o	ProductID е от тип int .
o	Quantity e от тип int, не може да бъде нулев.
o	Attributes е от тип nvarchar и е с максимална дължина 1000 символа.
o	DateAdded е от тип smalldatetime, не може да бъде нулев.
•	Таблица ОrderDetail – Тази таблица съдържа подробности за закупен продукт, съдържащ се в дадена поръчка.
o	Външен ключ – OrderID към таблицата Orders.
o	Външен ключ – ProductID към таблицата Product.
o	Колоните (OrderID, ProductID) заедно са composite primary key за тази таблица.
Колоните, които тя съдържа са:
o	OrderID е от тип int.
o	ProductID е от тип int.
o	ProductName е от тип nvarchar и е с максимална дължина 50 символа, не може да бъде нулев.
o	Quantity е от тип int, не може да бъде нулев.
o	UniCost е от тип money, не може да бъде нулев.
o	Subtotal е от тип money.
•	Tаблица Orders – Тази таблица съдържа подробни детайли за всяка от направените поръчки.
o	Първичен ключ – OrderID
o	Външен ключ – TaxID към таблица Tax.
o	Външен ключ- ShippingID към таблица Shipping.
Колоните, които тя съдържа са:
o	OrderID е от тип int е уникален за всеки запис.
o	DateCreated e oт тип smalldatetime, не може да бъде нулев.
o	DateShipped е от тип smalldatetime.
o	Verified е от тип bit, не може да бъде нулев.
o	Completed e от тип bit, не може да бъде нулев.
o	Canceled е от тип bit, не може да бъде нулев.
o	Comments е от тип nvarchar и е с максимална дължина 1000 символа.
o	CustomerName е от тип nvarchar и е с максимална дължина 50 символа.
o	CustomerEmail е от тип nvarchar и е с максимална дължина 50 символа.
o	ShippingAddress e от тип nvarchar и е с максимална дължина 500 символа.
o	CustomerID e от тип uniqueidentifier.
o	Status е от тип int.
o	AuthCode е от тип varchar и е с максимална дължина 50 символа.
o	Reference е от тип varchar и е с максимална дължина 50 символа.
o	TaxID е от тип int.
o	ShippingID e от тип int.
•	Таблица ShippingRegion – Тази таблица съдържа определени региони, използвани при доставка.
o	Първичен ключ - ShippingRegionID
Колоните, които тя съдържа са:
o	ShippingRegionID e от тип int и е уникален за всеки запис.
o	ShippingRegion е от тип nvarchar и е с максимална дължина 100 символа.
•	Таблица Shipping – Тази таблица съдържа информация за доставките.
o	Първичен ключ - ShippingID
Колоните, които тя съдържа са:
o	ShippingID е от тип int и е ункален за всеки запис.
o	ShippingType е от тип varchar и е с максимална дължина 100 символа, не може да бъде нулев.
o	ShippingCost е от тип money, не може да бъде нулев.
o	ShippingRegionID е от тип int.
•	Таблица  Audit – Тази таблица съдържа подробности за поръчката.
o	Първичен ключ - AuditID
Колоните, които тя съдържа са:
o	AuditID е от тип int.
o	OrderID е от тип int, не може да бъде нулев.
o	DateStamp е от тип datetime, не може да бъде нулев.
o	Message е от тип nvarchar и е с максимална дължина 512 символа.
o	MessageNumber е от тип int.
•	Таблица Таx – Тази таблица съдържа информация за данъка на дадена поръчка.
o	Първичен ключ - TaxID
Колоните, които тя съдържа са:
o	TaxID е от тип int и е уникален за всеки запис.
o	TaxType - е от тип nvarchar и е с максимална дължина 100 символа, не може да бъде нулев.
o	TaxPercentage e от тип float, не може да бъде нулев.
 
Таблици и релации между тях:

 

6. Описание на категориите и отделите

Системата разполага с два отдела – за перилни препарати и за домакински съдове. Към всеки отдел има по 3 категории. Тези категории разделят всеки отдел на 3 част.
В Северна България се намират: 
•	Североизточна: гр. Балчик, гр. Белослав, с. Дебрене, гр. Шумен, с. Зарник, гр. Търговище, с. Семерджиево, с. Карапелит.
•	Североцентрала: гр. Долни Дъбник, гр. Плевен,  гр. Тетевен.
•	Северозападна: с. Голема Раковица, кв. Суходол, с. Храбърско, гр. Перник, гр. Своге.
В Южна България се намират: 
•	Югоизточна: гр. Бургас, гр. Сливен, гр. Стралджа, гр. Ахелой, с. Гюльовица.
•	Югоцентрална: с. Радиево, с. Калековец, с. Градина, гр. Асеновград, с. Гълъбово, с. Богдан.
•	Югозападна: с. Капатово, с. Джигурово, с. Самораново, с. Ябълково,  с. Стоб.


7. Описание на съхранените процедури

CatalogAddDepartment – Добавя отдел в каталога 
CatalogUpdateDepartment – Променя отдел в каталога 
CatalogDeleteDepartment – Изтрива отдел от каталога 
CatalogGetDepartments - Връща отделите в каталога
CatalogCreateCategory – Създава категория в каталога 
CatalogUpdateCategory – Променя категория в отдела 
CatalogDeleteCategory – Изтрива категория в отдела 
CatalogGetAllProductsInCategory – Връща всички продукти в категория 
CatalogCreateProduct – Създава продукт в каталога 
CatalogUpdateProduct – Променя продукт в каталога
CatalogDeleteProduct- Изтрива продукт от каталога
CatalogCreateCategory-  Създава категория в каталога
CatalogGetCategoriesWithProduct – Връща категории с даден продукт 
CatalogGetCategoriesWithoutProduct – Връща категории без даден продукт 
CatalogAssignProductToCategory – Добавя продукт към категория 
CatalogMoveProductToCategory – Премества продукт в категория 
CatalogRemoveProductFromCategory – Премахва продукт от категория
ShoppingCartAddItem – Добавя продукт в количката 
ShoppingCartRemoveItem – Премахва продукт от количката 
ShoppingCartUpdateItem – Променя продукт от количката 
ShoppingCartGetItems – Връща продуктите в количката 
ShoppingCartGetTotalAmount – Връща сумата на цената на продуктите в количката.
CatalogGetProductsOnDeptPromo- Връща продуктите на промоция в отдела
CatalogGetProductsOnFrontPromo- Връща продуктите на промоция на началната страница
CatalogGetDepartmentDetails- Връща детайли за отдел
CatalogGetCategoryDetails-  Връща детайли за категория
CatalogGetCategoriesInDepartment- Връща категориите в отдел
ShoppingCartDeleteOldCarts – Изтрива старите колички
CatalogGetProductDetails-  Връща детайли за продукта
ShppingCartCountOldCarts- Връща броя на старите колички
CreateOrder – Създава поръчка 
OrderGetDetails – Връща детайли за поръчка 
OrdersGetByRecent- Връща поръчките сортирани то новост
OrdersGetByDate- Връща поръчките сортирани по дата
OrdersGetUnverifiedUncanceled – Връща неверифицирани поръчки 
OrdersGetVerifiedUncompleted – Връща незавършени поръчки 
OrderGetInfo – Връща информация за поръчка 
OrderUpdate – Променя поръчка 
OrderMarkVerified – Маркира поръчка за верифицирана 
OrderMarkCompleted – Маркира поръчка за завършена 
OrderMarkCanceled – Маркира поръчка за отменена

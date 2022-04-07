Create table Customer(
Id Int Primary key,
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(20),
);

select * from Customer;

INSERT INTO Customer(
    Id,
    FirstName,
    LastName,
    City,
	Country,
	Phone
)
VALUES
    (
        123,
        'Pranava',
        'Srinija',
        'Kovvur',
		'India',
		8897952667
    ),
    (
        124,
        'Srinivas',
        'Ramanujam',
        'Kakinada',
		'India',
		9949510507
    ),
    (
        125,
        'Prasana',
        'srikar',
        'Oman',
		'Saudi',
		9248340018
    );


Create table Orders(
Id Int Primary key,
OrderDate datetime,
OrderNumber nvarchar(10),
CustomerId int foreign key references [Customer](Id),
TotalAmount decimal(12,2)
);

INSERT INTO Orders(
    Id,
    OrderDate,
    OrderNumber,
    CustomerId,
	TotalAmount

)
VALUES
    (
        123,
        '20220115',
        12056453,
        123,
		123.789
		
    ),
    (
        124,
        '20211130',
        12786577,
        124,
		1456.00
		
    ),
    (
        125,
        '20211230',
        567892066,
        125,
		14455.00
		
    );

select * from Orders;

Create table Product(
Id Int Primary key,
ProductName nvarchar(50),
UnitPrice decimal(12,2),
Package nvarchar(30),
IsDiscontinued bit );

select * from Product;

Insert INTO Product(
     Id,
	 ProductName,
	 UnitPrice,
	 Package,
	 IsDiscontinued
	 )
Values (
		123,
		'Bag',
		1233.00,
		'family package',
		1
	),
	(
	  124,
	 'HairDyer',
	 1678.45,
	 'individual Package',
	 0
	),
	(
	  125,
	  'RiceCooker',
	  2500.00,
	  'family Package',
	  1
	);


Create table OrderItem(
Id Int Primary key,
OrderId int foreign key references Orders(Id),
ProductId int foreign key references Product(Id),
UnitPrice decimal(12,2),
Quntity int); 

Select * from OrderItem;

Insert INTO OrderItem(
		Id,
		OrderId,
		ProductId,
		UnitPrice,
		Quntity
	)
	Values(
		123,
		123,
		123,
		1233.00,
		1
	),
	(
		124,
		124,
        124,
		1678.45,
		1
	),
	(
		125,
		125,
        125,
		2500.00,
		1
	);

Create index IndexCustomerName on Customer(FirstName);

create index IndexOrderCustomerId on Orders(CustomerId);

create index IndexOrderDate on Orders(OrderDate);     

create index IndexProductSupplierId on Product(Id);

create index IndexProductName on Product(ProductName);

create index IndexSupplierId on Product(Id);

create index IndexProName on Product(ProductName);

Select Country from Customer where FirstName LIKE 'I%';

Select * from Customer where LastName LIKE '__I%';
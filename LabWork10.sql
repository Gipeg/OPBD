--TASK 3,4

ALter table PROMOTION
Add PromotionType NVARCHAR(5) NULL,
	Constraint DF_PromotionType
		Default '%' FOR DF_PromottionType;

--TASK 5

Alter table PROMOTION
	add CONSTRAINT CK_PromotionType
	Check (PromotionType = '%' or PromotionType = 'руб.'),

	CONSTRAINT CK_Discount
	Check (discount > 0)

--TASK 6

Alter table PROMOTION
	add CONSTRAINT UQ_NamePromotion
		UNIQUE(NamePromotion,StartDate)

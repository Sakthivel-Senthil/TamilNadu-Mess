USE [TamilNadu Mess]
GO
/****** Object:  StoredProcedure [dbo].[ESP_HotelStore]    Script Date: 22-08-2023 23:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ESP_HotelStore] 
	-- Add the parameters for the stored procedure here
	@type VARCHAR(50),
	@Username VARCHAR(50) = NULL,
	@Email VARCHAR(50) = NULL,
	@Newpassword VARCHAR(50) = NULL,
	@TotalAmount VARCHAR(50) = NULL,
	@SelectedItem VARCHAR(50) = NULL,
	@CardHolderName VARCHAR(50) = NULL,
	@CardNumber VARCHAR(16) = NULL,
	@ExpryDate DATE = NULL,
	@CcvCode VARCHAR(6) = NULL,
	@Yourname VARCHAR(50) = NULL,
	@Address VARCHAR(50) = NULL,
	@ContactNumber VARCHAR(11) = NULL,
	@Customer VARCHAR(50) = NULL,
	@ID BIGINT = NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF (@type = 'select')
	SELECT * From RegisterForm
	else if (@type = 'insert')
	insert into RegisterForm values (@Username,@Email,@Newpassword)
	else if (@type = 'HotelHomePage')
	insert into HotelHomePage values (@TotalAmount,@SelectedItem)
	else if (@type = 'CashOnDelivery')
	insert into CashOnDelivery
    values (@Address, @ContactNumber,@Customer)
	else if (@type = 'OnlinePaymentTable')
	insert into OnlinePaymentTable values (@CardHolderName,@CardNumber,@ExpryDate,@CcvCode,@Yourname)
	else if (@type = 'CatagoryView')
	select * from HotelHomePage
	else if (@type = 'CODdata')
	select * from CashOnDelivery
	else if (@type = 'OnPay')
	select * from OnlinePaymentTable
	else if (@type = 'Edit')
	update RegisterForm set Username = @Username, Email = @Email, Newpassword = @Newpassword where ID = @ID
	else if (@type = 'Delete')
	delete from RegisterForm where ID = @ID
END
/* -----------------------------------------------------------------------------
      TABLE : UserSubscriptions
----------------------------------------------------------------------------- */
USE [LoveMirroring]
GO
create table UserSubscriptions
  (
     SubscriptionID int IDENTITY(1,1) NOT NULL,
     UserID [nvarchar](450)  null  ,
     SubscriptionDATE datetime  not null  ,
	 SubscriptionAmount decimal  not null  ,
     constraint PK_SubscriptionID primary key (SubscriptionID)
  ) 
go

alter table UserSubscriptions 
     add constraint FK_UserSubscriptions_ASPNETUSERS foreign key (UserID) 
               references ASPNETUSERS (ID)
			   ON DELETE CASCADE
go
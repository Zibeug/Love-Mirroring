/* -----------------------------------------------------------------------------
      TABLE : UserSubscriptions
----------------------------------------------------------------------------- */
USE [LoveMirroring]
GO
create table UserSubscriptions
  (
     UserSubscriptionsID int IDENTITY(1,1) NOT NULL,
     UserID [nvarchar](450)  null  ,
     UserSubscriptionsDATE datetime  not null  ,
	 UserSubscriptionsAmount decimal  not null  ,
	 SubscriptionsID [smallint] not null,
     constraint PK_UserSubscriptionsIDID primary key (UserSubscriptionsID)
  ) 
go

alter table UserSubscriptions 
     add constraint FK_UserSubscriptions_ASPNETUSERS foreign key (UserID) 
               references ASPNETUSERS (ID)
			   ON DELETE CASCADE
go

alter table UserSubscriptions 
	 add constraint FK_Subscriptions_ASPNETUSERS foreign key (SubscriptionsID) 
               references Subscriptions ([SubscriptionId])
go
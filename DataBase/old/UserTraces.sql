/* -----------------------------------------------------------------------------
      TABLE : USERTRACES
----------------------------------------------------------------------------- */
USE [LoveMirroring]
GO
create table UserSubscriptions
  (
     SubscriptionID [smallint] IDENTITY(1,1) NOT NULL,
     ID [nvarchar](450)  null  ,
     LOGDATE datetime  not null  ,
     PAGEVISITED varchar(128)  not null  ,
	 IPADRESS varchar(128)  not null  
     ,
     constraint PK_USERTRACES primary key (LOGID)
  ) 
go

alter table UserSubscriptions 
     add constraint FK_UserSubscriptions_ASPNETUSERS foreign key (ID) 
               references ASPNETUSERS (ID)
go
--Send email to certain address when data in the 'Recall' column has been updated
CREATE TRIGGER [dbo].[Update_Trigger]
ON [dbo].[tablename] --Need to add tablename
AFTER UPDATE
AS
    IF UPDATE([Recall])
      BEGIN
          EXEC msdb.dbo.Sp_send_dbmail
            @profile_name = 'User', --Name of the user
            @recipients = 'UserEmail@example.com', --Email of the user
            @body = 'There recently has been a new recall added for your vehicle, please visit www.checkyourcar.com to find out more', --Here
            @subject = 'New Recall for your Vehicle'
      END;

GO


/* Configure Database mail, need to enable database mail feature in SQL Server
(run following query in sequence)/*
/*Enable advanced option*/
*sp_configure 'show advanced options', 1;
GO
RECONFIGURE;
GO
/*Enable database mail*/
*sp_configure 'Database Mail XPs', 1;
GO
RECONFIGURE
GO
﻿ALTER TABLE [AgencyModule].[AgencyEmailAddress]
    ADD CONSTRAINT [AgencyEmailAddress_Agency_FK] FOREIGN KEY ([AgencyKey]) REFERENCES [AgencyModule].[Agency] ([AgencyKey]) ON DELETE NO ACTION ON UPDATE NO ACTION;


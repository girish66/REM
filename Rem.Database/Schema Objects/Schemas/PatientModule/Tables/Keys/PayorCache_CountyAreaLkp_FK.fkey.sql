﻿ALTER TABLE [PatientModule].[PayorCache]
    ADD CONSTRAINT [PayorCache_CountyAreaLkp_FK] FOREIGN KEY ([CountyAreaLkpKey]) REFERENCES [CommonModule].[CountyAreaLkp] ([CountyAreaLkpKey]) ON DELETE NO ACTION ON UPDATE NO ACTION;


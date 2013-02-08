﻿CREATE TABLE [SbirtModule].[IndividualCounseling] (
    [ActivityKey] BIGINT         NOT NULL,
    [Note]        NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([ActivityKey] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF)
);



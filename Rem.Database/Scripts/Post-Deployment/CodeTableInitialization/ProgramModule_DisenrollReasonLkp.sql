
print '------------------------------------------------------------------------------------------'
print 'ProgramModule_DisenrollReasonLkp.sql'
print '------------------------------------------------------------------------------------------'

INSERT INTO [ProgramModule].DisenrollReasonLkp ( [DisenrollReasonLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 100, current_timestamp, 1, current_timestamp, 1, 1, N'Completed Treatment. No Substance use', NULL, NULL, NULL, 1, '3/31/2011', NULL, 0, 0 )
INSERT INTO [ProgramModule].DisenrollReasonLkp ( [DisenrollReasonLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 101, current_timestamp, 1, current_timestamp, 1, 1,  N'Completed Treatment. Some Substance use', NULL, NULL, NULL, 2, '3/31/2011', NULL, 0, 0 )
INSERT INTO [ProgramModule].DisenrollReasonLkp ( [DisenrollReasonLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 102, current_timestamp, 1, current_timestamp, 1, 1, N'Referred Outside Agency for Continued Services', NULL, NULL, NULL, 3, '3/31/2011', NULL, 0, 0 )
INSERT INTO [ProgramModule].DisenrollReasonLkp ( [DisenrollReasonLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 103, current_timestamp, 1, current_timestamp, 1, 1, N'Other', NULL, N'Other', NULL, 4, '3/31/2011', NULL, 0, 0 )

GO
print '------------------------------------------------------------------------------------------'
print 'TedsModule_ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkp.sql'
print '------------------------------------------------------------------------------------------'

INSERT INTO [TedsModule].[ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkp] ( [ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [Code], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 1, current_timestamp, 1, current_timestamp, 1, 0, N'No attendance in the past month', NULL, N'No attendance in the past month', N'01', NULL, 1, '1/1/1900',NULL, 0, 0 )
INSERT INTO [TedsModule].[ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkp] ( [ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [Code], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 2, current_timestamp, 1, current_timestamp, 1, 0, N'1-3 times in past month (less than 1 per week)', NULL, N'1-3 times in past month (less than 1 per week)', N'02', NULL, 2, '1/1/1900',NULL, 0, 0 )
INSERT INTO [TedsModule].[ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkp] ( [ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [Code], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 3, current_timestamp, 1, current_timestamp, 1, 0, N'4-7 times in past month (about 1 per week)', NULL, N'4-7 times in past month (about 1 per week)', N'03', NULL, 3, '1/1/1900',NULL, 0, 0 )
INSERT INTO [TedsModule].[ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkp] ( [ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [Code], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 4, current_timestamp, 1, current_timestamp, 1, 0, N'8-15 times in past month (2-3 times per week)', NULL, N'8-15 times in past month (2-3 times per week)', N'04', NULL, 4, '1/1/1900',NULL, 0, 0 )
INSERT INTO [TedsModule].[ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkp] ( [ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [Code], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 5, current_timestamp, 1, current_timestamp, 1, 0, N'16-30 times in past month (4+ times per week)', NULL, N'16-30 times in past month (4+ times per week)', N'05', NULL, 5, '1/1/1900',NULL, 0, 0 )
INSERT INTO [TedsModule].[ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkp] ( [ParticipatedSelfHelpGroupInPastThirtyDaysTypeLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [Code], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 6, current_timestamp, 1, current_timestamp, 1, 0, N'Some attendance but frequency unknown', NULL, N'Some attendance but frequency unknown', N'06', NULL, 6, '1/1/1900',NULL, 0, 0 )

GO
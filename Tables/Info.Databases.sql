CREATE TABLE [Info].[Databases]
(
[DatabaseID] [int] NOT NULL IDENTITY(1, 1),
[InstanceID] [int] NOT NULL,
[Name] [nvarchar] (256) COLLATE Latin1_General_CI_AS NULL,
[DateAdded] [datetime2] NULL,
[DateChecked] [datetime2] NULL,
[AutoClose] [bit] NULL,
[AutoCreateStatisticsEnabled] [bit] NULL,
[AutoShrink] [bit] NULL,
[AutoUpdateStatisticsEnabled] [bit] NULL,
[AvailabilityDatabaseSynchronizationState] [nvarchar] (16) COLLATE Latin1_General_CI_AS NULL,
[AvailabilityGroupName] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[CaseSensitive] [bit] NULL,
[Collation] [nvarchar] (30) COLLATE Latin1_General_CI_AS NULL,
[CompatibilityLevel] [nvarchar] (15) COLLATE Latin1_General_CI_AS NULL,
[CreateDate] [datetime2] NULL,
[DataSpaceUsageKB] [float] NULL,
[EncryptionEnabled] [bit] NULL,
[IndexSpaceUsageKB] [float] NULL,
[IsAccessible] [bit] NULL,
[IsFullTextEnabled] [bit] NULL,
[IsMirroringEnabled] [bit] NULL,
[IsParameterizationForced] [bit] NULL,
[IsReadCommittedSnapshotOn] [bit] NULL,
[IsSystemObject] [bit] NULL,
[IsUpdateable] [bit] NULL,
[LastBackupDate] [datetime2] NULL,
[LastDifferentialBackupDate] [datetime2] NULL,
[LastLogBackupDate] [datetime2] NULL,
[Owner] [nvarchar] (30) COLLATE Latin1_General_CI_AS NULL,
[PageVerify] [nvarchar] (17) COLLATE Latin1_General_CI_AS NULL,
[ReadOnly] [bit] NULL,
[RecoveryModel] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL,
[ReplicationOptions] [nvarchar] (40) COLLATE Latin1_General_CI_AS NULL,
[SizeMB] [float] NULL,
[SnapshotIsolationState] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL,
[SpaceAvailableKB] [float] NULL,
[Status] [nvarchar] (35) COLLATE Latin1_General_CI_AS NULL,
[TargetRecoveryTime] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Info].[Databases] ADD CONSTRAINT [PK_Databases] PRIMARY KEY CLUSTERED  ([DatabaseID]) ON [PRIMARY]
GO
ALTER TABLE [Info].[Databases] ADD CONSTRAINT [FK_Databases_InstanceList] FOREIGN KEY ([InstanceID]) REFERENCES [dbo].[InstanceList] ([InstanceID])
GO

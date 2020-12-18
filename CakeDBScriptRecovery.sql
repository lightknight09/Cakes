/*enter databas name here*/

CREATE TABLE [dbo].[CakeDecoration] (
    [Vendor_name] nvarchar(50)  NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Units] nvarchar(50)  NULL,
    [Amount] int  NULL,
    [Main_vendor] nvarchar(50)  NULL,
    [Type] nvarchar(50)  NULL,
    [Price] nvarchar(50)  NULL,
    [Weight] nvarchar(50)  NULL
);
GO

CREATE TABLE [dbo].[Equipment] (
    [Label] nvarchar(50)  NOT NULL,
    [Equipment_type] nvarchar(50)  NOT NULL,
    [Characteristics] nvarchar(250)  NULL
);
GO

CREATE TABLE [dbo].[EquipmentType] (
    [Name] nvarchar(50)  NOT NULL,
    [Size] nvarchar(50)  NOT NULL
);
GO

CREATE TABLE [dbo].[Ingredients] (
    [Vendor_code] int  NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Units] nvarchar(50)  NULL,
    [Amount] nvarchar(50)  NULL,
    [Main_vendor] nvarchar(50)  NULL,
    [Type] nvarchar(50)  NULL,
    [Price] nvarchar(50)  NULL,
    [GOST] nvarchar(50)  NULL,
    [Packaging] nvarchar(50)  NULL,
    [Characteristic] nvarchar(50)  NULL
);
GO

CREATE TABLE [dbo].[Operations] (
    [Product] nvarchar(50)  NOT NULL,
    [Operation] nvarchar(50)  NOT NULL,
    [Serial_number] int IDENTITY(1,1) NOT NULL,
    [Equiipment_type] nvarchar(50)  NULL,
    [Time_for_operation] int  NOT NULL
);
GO

CREATE TABLE [dbo].[Order] (
    [Number] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Product] nvarchar(50)  NOT NULL,
    [User] nvarchar(50)  NOT NULL,
    [Manager] nvarchar(50)  NULL,
    [Price] decimal(19,4)  NULL,
    [Plan_comp_date] datetime  NULL,
    [Examples] varbinary(max)  NULL
);
GO

CREATE TABLE [dbo].[Product] (
    [Name] nvarchar(50)  NOT NULL,
    [Size] int  NOT NULL
);
GO

CREATE TABLE [dbo].[SpecCakeDecoration] (
    [Product] nvarchar(50)  NOT NULL,
    [Cake_decoration] nvarchar(50)  NOT NULL,
    [Amount] int  NOT NULL
);
GO

CREATE TABLE [dbo].[SpecIngredients] (
    [Product] nvarchar(50)  NOT NULL,
    [Ingredient] int  NOT NULL,
    [Amount] int  NOT NULL
);
GO

CREATE TABLE [dbo].[SpecSFProducts] (
    [Product] nvarchar(50)  NOT NULL,
    [SFProduct] nvarchar(50)  NOT NULL,
    [Amount] int  NOT NULL
);
GO

CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

CREATE TABLE [dbo].[Users] (
    [Last_name] nvarchar(50)  NOT NULL,
    [First_name] nvarchar(50)  NOT NULL,
    [Login] nvarchar(50)  NOT NULL,
    [Password] nvarchar(50)  NOT NULL,
    [Role] nvarchar(50)  NOT NULL
);
GO

CREATE TABLE [dbo].[Vendor] (
    [Name] nvarchar(50)  NOT NULL,
    [Adress] nvarchar(50)  NOT NULL,
    [Date_of_delivery] nvarchar(50)  NOT NULL
);
GO

CREATE TABLE [dbo].[Tools] (
    [Id] int  NOT NULL,
    [ToolName] nvarchar(255)  NULL,
    [ToolType] nvarchar(255)  NULL,
    [DateOfBuy] datetime  NULL,
    [Amount] int  NULL,
    [Description] nvarchar(255)  NULL,
    [Wear] nvarchar(255)  NULL,
    [Provider] nvarchar(255)  NULL
);
GO

ALTER TABLE [dbo].[CakeDecoration]
ADD CONSTRAINT [PK_CakeDecoration]
    PRIMARY KEY CLUSTERED ([Vendor_name] ASC);
GO

ALTER TABLE [dbo].[Equipment]
ADD CONSTRAINT [PK_Equipment]
    PRIMARY KEY CLUSTERED ([Label] ASC);
GO

ALTER TABLE [dbo].[EquipmentType]
ADD CONSTRAINT [PK_EquipmentType]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

ALTER TABLE [dbo].[Ingredients]
ADD CONSTRAINT [PK_Ingredients]
    PRIMARY KEY CLUSTERED ([Vendor_code] ASC);
GO

ALTER TABLE [dbo].[Operations]
ADD CONSTRAINT [PK_Operations]
    PRIMARY KEY CLUSTERED ([Product], [Operation], [Serial_number] ASC);
GO

ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [PK_Order]
    PRIMARY KEY CLUSTERED ([Number], [Date] ASC);
GO

ALTER TABLE [dbo].[Product]
ADD CONSTRAINT [PK_Product]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

ALTER TABLE [dbo].[SpecCakeDecoration]
ADD CONSTRAINT [PK_SpecCakeDecoration]
    PRIMARY KEY CLUSTERED ([Product], [Cake_decoration] ASC);
GO

ALTER TABLE [dbo].[SpecIngredients]
ADD CONSTRAINT [PK_SpecIngredients]
    PRIMARY KEY CLUSTERED ([Product], [Ingredient] ASC);
GO

ALTER TABLE [dbo].[SpecSFProducts]
ADD CONSTRAINT [PK_SpecSFProducts]
    PRIMARY KEY CLUSTERED ([Product], [SFProduct] ASC);
GO

ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Login] ASC);
GO

ALTER TABLE [dbo].[Vendor]
ADD CONSTRAINT [PK_Vendor]
    PRIMARY KEY CLUSTERED ([Name] ASC);
GO

ALTER TABLE [dbo].[Tools]
ADD CONSTRAINT [PK_Tools]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

ALTER TABLE [dbo].[CakeDecoration]
ADD CONSTRAINT [FK__cake_deco__Main___286302EC]
    FOREIGN KEY ([Main_vendor])
    REFERENCES [dbo].[Vendor]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK__cake_deco__Main___286302EC]
ON [dbo].[CakeDecoration]
    ([Main_vendor]);
GO

ALTER TABLE [dbo].[SpecCakeDecoration]
ADD CONSTRAINT [FK__Spec_cake__Cake___02FC7413]
    FOREIGN KEY ([Cake_decoration])
    REFERENCES [dbo].[CakeDecoration]
        ([Vendor_name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK__Spec_cake__Cake___02FC7413]
ON [dbo].[SpecCakeDecoration]
    ([Cake_decoration]);
GO

ALTER TABLE [dbo].[Equipment]
ADD CONSTRAINT [FK__Equipment__Equip__07C12930]
    FOREIGN KEY ([Equipment_type])
    REFERENCES [dbo].[EquipmentType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK__Equipment__Equip__07C12930]
ON [dbo].[Equipment]
    ([Equipment_type]);
GO

ALTER TABLE [dbo].[Operations]
ADD CONSTRAINT [FK__operation__Equii__0F624AF8]
    FOREIGN KEY ([Equiipment_type])
    REFERENCES [dbo].[EquipmentType]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK__operation__Equii__0F624AF8]
ON [dbo].[Operations]
    ([Equiipment_type]);
GO

ALTER TABLE [dbo].[Ingredients]
ADD CONSTRAINT [FK__Ingridien__Main___276EDEB3]
    FOREIGN KEY ([Main_vendor])
    REFERENCES [dbo].[Vendor]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK__Ingridien__Main___276EDEB3]
ON [dbo].[Ingredients]
    ([Main_vendor]);
GO

ALTER TABLE [dbo].[SpecIngredients]
ADD CONSTRAINT [FK__Spec_infr__Ingre__7F2BE32F]
    FOREIGN KEY ([Ingredient])
    REFERENCES [dbo].[Ingredients]
        ([Vendor_code])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK__Spec_infr__Ingre__7F2BE32F]
ON [dbo].[SpecIngredients]
    ([Ingredient]);
GO

ALTER TABLE [dbo].[Operations]
ADD CONSTRAINT [FK__operation__Produ__0E6E26BF]
    FOREIGN KEY ([Product])
    REFERENCES [dbo].[Product]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [FK__order__Manager__778AC167]
    FOREIGN KEY ([Manager])
    REFERENCES [dbo].[Users]
        ([Login])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK__order__Manager__778AC167]
ON [dbo].[Order]
    ([Manager]);
GO

ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [FK__order__Product__75A278F5]
    FOREIGN KEY ([Product])
    REFERENCES [dbo].[Product]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK__order__Product__75A278F5]
ON [dbo].[Order]
    ([Product]);
GO

ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [FK__order__User__76969D2E]
    FOREIGN KEY ([User])
    REFERENCES [dbo].[Users]
        ([Login])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK__order__User__76969D2E]
ON [dbo].[Order]
    ([User]);
GO

ALTER TABLE [dbo].[SpecCakeDecoration]
ADD CONSTRAINT [FK__Spec_cake__Produ__02084FDA]
    FOREIGN KEY ([Product])
    REFERENCES [dbo].[Product]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

ALTER TABLE [dbo].[SpecIngredients]
ADD CONSTRAINT [FK__Spec_infr__Produ__7E37BEF6]
    FOREIGN KEY ([Product])
    REFERENCES [dbo].[Product]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

ALTER TABLE [dbo].[SpecSFProducts]
ADD CONSTRAINT [FK__Spec_SFPr__Produ__6FE99F9F]
    FOREIGN KEY ([Product])
    REFERENCES [dbo].[Product]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

ALTER TABLE [dbo].[SpecSFProducts]
ADD CONSTRAINT [FK__Spec_SFPr__SFPro__70DDC3D8]
    FOREIGN KEY ([SFProduct])
    REFERENCES [dbo].[Product]
        ([Name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK__Spec_SFPr__SFPro__70DDC3D8]
ON [dbo].[SpecSFProducts]
    ([SFProduct]);
GO
.class public abstract Lcom/ca/mas/core/datasource/LocalStoreDataSource$LocalStorageContract$LocalStorageEntry;
.super Ljava/lang/Object;
.source "LocalStoreDataSource.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/datasource/LocalStoreDataSource$LocalStorageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LocalStorageEntry"
.end annotation


# static fields
.field public static final COLUMN_CREATED_BY:Ljava/lang/String; = "created_by"

.field public static final COLUMN_CREATED_DATE:Ljava/lang/String; = "created_date"

.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_LAST_UPDATED_DATE:Ljava/lang/String; = "last_updated_date"

.field public static final COLUMN_SEGMENT:Ljava/lang/String; = "segment"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "content_type"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_NAME:Ljava/lang/String; = "LocalStore"


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/datasource/LocalStoreDataSource$LocalStorageContract;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

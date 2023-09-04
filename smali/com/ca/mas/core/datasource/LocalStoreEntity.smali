.class public Lcom/ca/mas/core/datasource/LocalStoreEntity;
.super Ljava/lang/Object;
.source "LocalStoreEntity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/core/datasource/LocalStoreEntity;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ca/mas/core/datasource/LocalStoreEntity;->b:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/datasource/LocalStoreEntity;->b:[B

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/datasource/LocalStoreEntity;->a:Ljava/lang/String;

    return-object v0
.end method

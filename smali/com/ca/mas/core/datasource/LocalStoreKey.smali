.class public Lcom/ca/mas/core/datasource/LocalStoreKey;
.super Ljava/lang/Object;
.source "LocalStoreKey.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/core/datasource/LocalStoreKey;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ca/mas/core/datasource/LocalStoreKey;->b:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/ca/mas/core/datasource/LocalStoreKey;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreatedBy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/datasource/LocalStoreKey;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/datasource/LocalStoreKey;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSegment()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/datasource/LocalStoreKey;->b:Ljava/lang/Integer;

    return-object v0
.end method

.class public Lcom/ca/mas/core/datasource/DataSourceFactory;
.super Ljava/lang/Object;
.source "DataSourceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorage(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/ca/mas/core/datasource/DataSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ca/mas/core/datasource/DataSource;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/ca/mas/core/datasource/DataSource<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lorg/json/JSONObject;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/ca/mas/core/datasource/DataConverter;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p2, v0, v3

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/datasource/DataSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {p1, p0}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getStorage(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Lcom/ca/mas/core/datasource/DataConverter;)Lcom/ca/mas/core/datasource/DataSource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ca/mas/core/datasource/DataSource;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lcom/ca/mas/core/datasource/DataConverter;",
            ")",
            "Lcom/ca/mas/core/datasource/DataSource<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x3

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/json/JSONObject;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Lcom/ca/mas/core/datasource/DataConverter;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/datasource/DataSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {p1, p0}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

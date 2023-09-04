.class Lcom/ca/mas/core/store/StorageProvider$a;
.super Ljava/lang/Object;
.source "StorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/store/StorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Class;

.field b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/conf/ConfigurationProvider;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "msso.storage"

    .line 2
    invoke-interface {p1, v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_2

    .line 3
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "MAS"

    const-string v0, "No storage configuration found in JSON config, falling back to DEFAULT "

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ge p1, v0, :cond_1

    .line 6
    const-class p1, Lcom/ca/mas/core/datasource/KeystoreDataSource;

    iput-object p1, p0, Lcom/ca/mas/core/store/StorageProvider$a;->a:Ljava/lang/Class;

    goto :goto_0

    .line 7
    :cond_1
    const-class p1, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;

    iput-object p1, p0, Lcom/ca/mas/core/store/StorageProvider$a;->a:Ljava/lang/Class;

    .line 8
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ca/mas/core/store/StorageProvider$a;->b:Lorg/json/JSONObject;

    goto :goto_1

    .line 9
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/store/StorageProvider$a;->a:Ljava/lang/Class;

    .line 10
    iput-object p1, p0, Lcom/ca/mas/core/store/StorageProvider$a;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Lcom/ca/mas/core/datasource/DataSourceException;

    const-string v1, "Invalid Storage Config"

    invoke-direct {v0, v1, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    .line 12
    new-instance v1, Lcom/ca/mas/core/datasource/DataSourceException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Provided Storage configuration %s cannot be found "

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/StorageProvider$a;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method b()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/StorageProvider$a;->a:Ljava/lang/Class;

    return-object v0
.end method

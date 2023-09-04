.class public Lcom/ca/mas/core/conf/ConfigurationManager;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/conf/ConfigurationManager$c;,
        Lcom/ca/mas/core/conf/ConfigurationManager$b;
    }
.end annotation


# static fields
.field private static a:Lcom/ca/mas/core/conf/ConfigurationManager;


# instance fields
.field private b:Lcom/ca/mas/core/conf/ConfigurationProvider;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/core/conf/Config;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lorg/json/JSONObject;

.field private j:Lcom/ca/mas/foundation/MASConnectionListener;

.field private k:Lcom/ca/mas/core/MobileSsoListener;

.field private l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class;",
            "Lcom/ca/mas/core/ResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/ca/mas/foundation/MASGrantProvider;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/core/conf/ConfigurationManager$c;",
            ">;"
        }
    .end annotation
.end field

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/conf/ConfigurationManager;

    invoke-direct {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;-><init>()V

    sput-object v0, Lcom/ca/mas/core/conf/ConfigurationManager;->a:Lcom/ca/mas/core/conf/ConfigurationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    .line 3
    iput-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->f:Z

    .line 5
    iput-boolean v1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->g:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->h:Z

    .line 7
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->l:Ljava/util/LinkedHashMap;

    .line 8
    sget-object v1, Lcom/ca/mas/foundation/MASGrantProvider;->PASSWORD:Lcom/ca/mas/foundation/MASGrantProvider;

    iput-object v1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->m:Lcom/ca/mas/foundation/MASGrantProvider;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->n:Ljava/util/List;

    const/16 v2, 0x1e

    .line 10
    iput v2, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->o:I

    .line 11
    new-instance v2, Lcom/ca/mas/core/conf/ConfigurationManager$b;

    invoke-direct {v2, v0}, Lcom/ca/mas/core/conf/ConfigurationManager$b;-><init>(Lcom/ca/mas/core/conf/ConfigurationManager$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->c:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConfig(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :try_start_2
    new-instance v1, Lcom/ca/mas/core/error/MAGRuntimeException;

    const v2, 0x18769

    invoke-direct {v1, v2, p1}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 7
    :catch_2
    :cond_1
    throw p1
.end method

.method private b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ca/mas/core/conf/Config;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->c(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ca/mas/core/conf/Config;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/ca/mas/core/conf/Config;->path:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/ca/mas/core/conf/Config;->mandatory:Z

    invoke-static {v0, v1, p2}, Lcom/ca/mas/core/conf/ConfigurationManager;->d(Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p3

    .line 2
    :cond_0
    iget-object p3, p1, Lcom/ca/mas/core/conf/Config;->type:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string v0, "Invalid value for attribute "

    const v1, 0x1876b

    if-nez p3, :cond_3

    instance-of p3, p2, Lorg/json/JSONArray;

    if-eqz p3, :cond_1

    iget-object p3, p1, Lcom/ca/mas/core/conf/Config;->type:Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    .line 3
    invoke-virtual {p3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_3

    :cond_1
    instance-of p3, p2, Lorg/json/JSONObject;

    if-eqz p3, :cond_2

    iget-object p3, p1, Lcom/ca/mas/core/conf/Config;->type:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance p2, Lcom/ca/mas/core/error/MAGRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ca/mas/core/conf/Config;->path:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 6
    :cond_3
    :goto_0
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_6

    .line 7
    move-object p3, p2

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    return-object p2

    .line 8
    :cond_4
    iget-boolean p3, p1, Lcom/ca/mas/core/conf/Config;->mandatory:Z

    if-nez p3, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    new-instance p2, Lcom/ca/mas/core/error/MAGRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ca/mas/core/conf/Config;->path:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 10
    :cond_6
    instance-of p1, p2, Lorg/json/JSONArray;

    if-eqz p1, :cond_9

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    check-cast p2, Lorg/json/JSONArray;

    const/4 p3, 0x0

    .line 13
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p3, v0, :cond_8

    .line 14
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 15
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_7

    .line 16
    check-cast v0, Lorg/json/JSONArray;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 18
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_8
    return-object p1

    :cond_9
    :goto_3
    return-object p2
.end method

.method private static d(Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3
    instance-of v2, p2, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5
    check-cast p2, Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/ca/mas/core/conf/ConfigurationManager;->d(Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    check-cast p2, Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/ca/mas/core/conf/ConfigurationManager;->d(Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    check-cast p2, Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 13
    :cond_4
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->c:Landroid/content/Context;

    const-string v2, "connected_gateway.json"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/ca/mas/core/conf/ConfigurationManager;->create(Lorg/json/JSONObject;)Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 9
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    .line 10
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 11
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_2

    .line 12
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 13
    :goto_3
    instance-of v0, v0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p0, v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->activate(Lorg/json/JSONObject;)V

    goto :goto_4

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->activateDefault()V

    :cond_4
    :goto_4
    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->c:Landroid/content/Context;

    .line 2
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "connected_gateway.json"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 7
    :goto_0
    :try_start_3
    new-instance v1, Lcom/ca/mas/core/error/MAGRuntimeException;

    const v2, 0x1876a

    invoke-direct {v1, v2, p1}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v0, :cond_0

    .line 8
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 9
    :catch_3
    :cond_0
    throw p1
.end method

.method public static getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/conf/ConfigurationManager;->a:Lcom/ca/mas/core/conf/ConfigurationManager;

    return-object v0
.end method


# virtual methods
.method public activate(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->create(Lorg/json/JSONObject;)Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->c:Landroid/content/Context;

    .line 3
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MAS"

    const-string v2, "Activate configuration: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 4
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ca/mas/core/conf/ConfigurationManager$c;

    .line 7
    iget-object v3, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    invoke-interface {v2, v0, v3}, Lcom/ca/mas/core/conf/ConfigurationManager$c;->a(Landroid/content/Context;Lcom/ca/mas/core/conf/ConfigurationProvider;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->f(Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lcom/ca/mas/core/error/MAGRuntimeException;

    const v1, 0x1876b

    invoke-direct {v0, v1, p1}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public activateDefault()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConfigurationFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->activate(Lorg/json/JSONObject;)V

    return-void
.end method

.method public create(Lorg/json/JSONObject;)Lcom/ca/mas/core/conf/ConfigurationProvider;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/core/conf/Config;->HOSTNAME:Lcom/ca/mas/core/conf/Config;

    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/ca/mas/core/conf/Config;->PREFIX:Lcom/ca/mas/core/conf/Config;

    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/ca/mas/core/conf/Config;->PORT:Lcom/ca/mas/core/conf/Config;

    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 4
    sget-object v0, Lcom/ca/mas/core/conf/Config;->CLIENT_KEY:Lcom/ca/mas/core/conf/Config;

    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/ca/mas/core/conf/Config;->CLIENT_SECRET:Lcom/ca/mas/core/conf/Config;

    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/ca/mas/core/conf/Config;->ORGANIZATION:Lcom/ca/mas/core/conf/Config;

    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/ca/mas/core/conf/Config;->SCOPE:Lcom/ca/mas/core/conf/Config;

    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/ca/mas/core/conf/Config;->REDIRECT_URI:Lcom/ca/mas/core/conf/Config;

    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/ca/mas/core/conf/DefaultConfiguration;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/ca/mas/core/conf/DefaultConfiguration;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/ca/mas/core/conf/Config;->values:[Lcom/ca/mas/core/conf/Config;

    .line 11
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 12
    sget-object v5, Lcom/ca/mas/core/conf/Config;->SERVER_CERTS:Lcom/ca/mas/core/conf/Config;

    if-ne v4, v5, :cond_0

    .line 13
    invoke-direct {p0, v5, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ca/mas/core/conf/DefaultConfiguration;->addTrustedCertificateAnchors([Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_0
    sget-object v5, Lcom/ca/mas/core/conf/Config;->TRUSTED_CERT_PINNED_PUBLIC_KEY_HASHES:Lcom/ca/mas/core/conf/Config;

    if-ne v4, v5, :cond_1

    .line 17
    invoke-direct {p0, v5, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 19
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ca/mas/core/conf/DefaultConfiguration;->addTrustedCertificatePinnedPublicKeyHashes([Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_1
    sget-object v5, Lcom/ca/mas/core/conf/Config;->TRUSTED_PUBLIC_PKI:Lcom/ca/mas/core/conf/Config;

    if-ne v4, v5, :cond_2

    .line 21
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v5, p1, v4}, Lcom/ca/mas/core/conf/ConfigurationManager;->c(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ca/mas/core/conf/DefaultConfiguration;->setAlsoTrustPublicPki(Z)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-direct {p0, v4, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 23
    iget-object v4, v4, Lcom/ca/mas/core/conf/Config;->key:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/ca/mas/core/conf/DefaultConfiguration;->putProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_4
    iget-object v1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->d:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ca/mas/core/conf/Config;

    .line 26
    iget-object v3, v2, Lcom/ca/mas/core/conf/Config;->key:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/ca/mas/core/conf/ConfigurationManager;->b(Lcom/ca/mas/core/conf/Config;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/ca/mas/core/conf/DefaultConfiguration;->putProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public enableIdTokenValidation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->g:Z

    return-void
.end method

.method public enableJwksPreload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->h:Z

    return-void
.end method

.method public enablePKCE(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->f:Z

    return-void
.end method

.method public getCertificateAdvancedRenewTimeframe()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->o:I

    return v0
.end method

.method public getConfig(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    .line 7
    :goto_1
    :try_start_3
    new-instance v0, Lcom/ca/mas/core/error/MAGRuntimeException;

    const v2, 0x186a2

    invoke-direct {v0, v2, p1}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    .line 8
    :goto_2
    new-instance v0, Lcom/ca/mas/core/error/MAGRuntimeException;

    const v2, 0x18769

    invoke-direct {v0, v2, p1}, Lcom/ca/mas/core/error/MAGRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-eqz v1, :cond_1

    .line 9
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 10
    :catch_5
    :cond_1
    throw p1
.end method

.method public getConfigurationFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "msso_config.json"

    :cond_0
    return-object v0
.end method

.method public getConnectedGateway()Lcom/ca/mas/core/conf/Server;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->e()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getServer()Lcom/ca/mas/core/conf/Server;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Gateway configuration should be configured."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectedGatewayConfig()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->e()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    invoke-interface {v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getRaw()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/conf/ConfigurationManager;->e()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    return-object v0
.end method

.method public getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->j:Lcom/ca/mas/foundation/MASConnectionListener;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->m:Lcom/ca/mas/foundation/MASGrantProvider;

    return-object v0
.end method

.method public getMobileSsoListener()Lcom/ca/mas/core/MobileSsoListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->k:Lcom/ca/mas/core/MobileSsoListener;

    return-object v0
.end method

.method public getResponseInterceptors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/ca/mas/core/ResponseInterceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->c:Landroid/content/Context;

    return-void
.end method

.method public isIdTokenValidationEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->g:Z

    return v0
.end method

.method public isJwksPreloadEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->h:Z

    return v0
.end method

.method public isPKCEEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->f:Z

    return v0
.end method

.method public declared-synchronized registerResponseInterceptor(Lcom/ca/mas/core/ResponseInterceptor;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->b:Lcom/ca/mas/core/conf/ConfigurationProvider;

    return-void
.end method

.method public setAppConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ca/mas/core/conf/Config;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->d:Ljava/util/List;

    return-void
.end method

.method public setCertificateAdvancedRenewTimeframe(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->o:I

    return-void
.end method

.method public setConfigurationFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->e:Ljava/lang/String;

    return-void
.end method

.method public setConnectionListener(Lcom/ca/mas/foundation/MASConnectionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->j:Lcom/ca/mas/foundation/MASConnectionListener;

    return-void
.end method

.method public setDefaultGrantProvider(Lcom/ca/mas/foundation/MASGrantProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->m:Lcom/ca/mas/foundation/MASGrantProvider;

    return-void
.end method

.method public setJsonConfig(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->i:Lorg/json/JSONObject;

    return-void
.end method

.method public setMobileSsoListener(Lcom/ca/mas/core/MobileSsoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->k:Lcom/ca/mas/core/MobileSsoListener;

    return-void
.end method

.method public declared-synchronized unregisterResponseInterceptor(Lcom/ca/mas/core/ResponseInterceptor;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/conf/ConfigurationManager;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

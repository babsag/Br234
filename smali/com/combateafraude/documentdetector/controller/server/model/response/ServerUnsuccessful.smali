.class public Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;
.super Ljava/lang/Object;
.source "ServerUnsuccessful.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;->a:Ljava/lang/String;

    return-void
.end method

.method public static createFromJSON(Lokhttp3/ResponseBody;)Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;
    .locals 2
    .param p0    # Lokhttp3/ResponseBody;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 3
    :cond_0
    new-instance p0, Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;->a:Ljava/lang/String;

    return-object v0
.end method

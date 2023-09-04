.class Lcom/ca/mas/core/auth/AuthRenderer$a;
.super Lcom/ca/mas/core/http/MAGHttpClient;
.source "AuthRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/auth/AuthRenderer;->proceed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/auth/AuthRenderer;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/auth/AuthRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/AuthRenderer$a;->a:Lcom/ca/mas/core/auth/AuthRenderer;

    invoke-direct {p0}, Lcom/ca/mas/core/http/MAGHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected onConnectionObtained(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ca/mas/core/http/MAGHttpClient;->onConnectionObtained(Ljava/net/HttpURLConnection;)V

    .line 2
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getMagIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mag-identifier"

    .line 4
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class public Lcom/ca/mas/foundation/auth/MASProximityLoginQRCode;
.super Lcom/ca/mas/core/auth/QRCodeRenderer;
.source "MASProximityLoginQRCode.java"

# interfaces
.implements Lcom/ca/mas/foundation/auth/MASProximityLogin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/auth/QRCodeRenderer;-><init>()V

    return-void
.end method

.method public static authorize(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    new-instance v1, Lcom/ca/mas/foundation/auth/MASProximityLoginQRCode$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/ca/mas/foundation/auth/MASProximityLoginQRCode$a;-><init>(Landroid/os/Handler;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-interface {v0, p0, v1}, Lcom/ca/mas/core/MobileSso;->authorize(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;JLcom/ca/mas/foundation/auth/MASAuthenticationProviders;)Z
    .locals 2

    .line 1
    iput-wide p2, p0, Lcom/ca/mas/core/auth/AuthRenderer;->requestId:J

    .line 2
    invoke-virtual {p4}, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->getProviders()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;

    .line 3
    invoke-virtual {p3}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->isProximityLogin()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 4
    new-instance p2, Lcom/ca/mas/core/service/Provider;

    invoke-virtual {p3}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->getIdentifier()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->getPollUrl()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p2, p4, v0, p3, v1}, Lcom/ca/mas/core/service/Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-super {p0, p1, p2}, Lcom/ca/mas/core/auth/PollingRenderer;->init(Landroid/content/Context;Lcom/ca/mas/core/service/Provider;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->onRenderCompleted()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->close()V

    return-void
.end method

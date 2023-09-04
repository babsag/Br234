.class Lcom/ca/mas/foundation/b;
.super Ljava/lang/Object;
.source "AuthenticationListener.java"

# interfaces
.implements Lcom/ca/mas/core/MobileSsoListener;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/b;->a:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/ca/mas/foundation/MASAuthorizationRequestHandler;
    .locals 5

    :try_start_0
    const-string v0, "com.ca.mas.ui.MASAppAuthAuthorizationRequestHandler"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/foundation/MASAuthorizationRequestHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.ca.mas.ui.MASLoginActivity"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onAuthenticateRequest(JLcom/ca/mas/core/service/AuthenticationProvider;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->e()Lcom/ca/mas/foundation/MASAuthenticationListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->isBrowserBasedAuthenticationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASAuthorizationRequest$MASAuthorizationRequestBuilder;->buildDefault()Lcom/ca/mas/foundation/MASAuthorizationRequest;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/ca/mas/foundation/b;->a()Lcom/ca/mas/foundation/MASAuthorizationRequestHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0, v1}, Lcom/ca/mas/foundation/MASUser;->login(Lcom/ca/mas/foundation/MASAuthorizationRequest;Lcom/ca/mas/foundation/MASAuthorizationRequestHandler;)V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/ca/mas/foundation/b;->b()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/ca/mas/foundation/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 8
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ca/mas/foundation/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.ca.mas.core.service.req.extra.requestId"

    .line 10
    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 11
    new-instance p1, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;

    invoke-direct {p1, p3}, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;-><init>(Lcom/ca/mas/core/service/AuthenticationProvider;)V

    const-string p2, "com.ca.mas.core.service.req.extra.social.login.providers"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 12
    iget-object p1, p0, Lcom/ca/mas/foundation/b;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lcom/ca/mas/foundation/MASAuthenticationListener;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is required for user authentication."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MAS"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->e()Lcom/ca/mas/foundation/MASAuthenticationListener;

    move-result-object v0

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;

    invoke-direct {v2, p3}, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;-><init>(Lcom/ca/mas/core/service/AuthenticationProvider;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/ca/mas/foundation/MASAuthenticationListener;->onAuthenticateRequest(Landroid/content/Context;JLcom/ca/mas/foundation/auth/MASAuthenticationProviders;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onOtpAuthenticationRequest(Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;)V
    .locals 0

    return-void
.end method

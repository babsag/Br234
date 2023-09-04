.class public Lcom/ca/mas/foundation/MASOtpMultiFactorAuthenticator;
.super Lcom/ca/mas/foundation/MASMultiFactorAuthenticator;
.source "MASOtpMultiFactorAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/foundation/MASMultiFactorAuthenticator<",
        "Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/foundation/MASMultiFactorAuthenticator;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Class;
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
    const-string v0, "com.ca.mas.ui.otp.MASOtpActivity"

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
.method public bridge synthetic getMultiFactorHandler(JLcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASResponse;)Lcom/ca/mas/foundation/MASMultiFactorHandler;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ca/mas/foundation/MASOtpMultiFactorAuthenticator;->getMultiFactorHandler(JLcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASResponse;)Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;

    move-result-object p1

    return-object p1
.end method

.method public getMultiFactorHandler(JLcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASResponse;)Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/ca/mas/foundation/MASRequest;",
            "Lcom/ca/mas/foundation/MASResponse<",
            "*>;)",
            "Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;"
        }
    .end annotation

    .line 2
    invoke-interface {p4}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result p3

    const/16 v0, 0x190

    if-eq p3, v0, :cond_0

    const/16 v0, 0x191

    if-eq p3, v0, :cond_0

    const/16 v0, 0x193

    if-ne p3, v0, :cond_2

    .line 3
    :cond_0
    invoke-interface {p4}, Lcom/ca/mas/foundation/MASResponse;->getHeaders()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3}, Lcom/ca/mas/core/auth/otp/OtpUtil;->getXotpValueFromHeaders(Ljava/util/Map;)Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;

    move-result-object p3

    .line 4
    sget-object p4, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->REQUIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    invoke-virtual {p3}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->getxOtpValue()Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    move-result-object v0

    if-ne p4, v0, :cond_1

    .line 5
    new-instance p4, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;

    invoke-virtual {p3}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->getChannels()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;-><init>(JLjava/util/List;Z)V

    return-object p4

    .line 6
    :cond_1
    sget-object p4, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->OTP_INVALID:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    invoke-virtual {p3}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->getErrorCode()Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    move-result-object v0

    if-ne p4, v0, :cond_2

    .line 7
    new-instance p4, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;

    invoke-virtual {p3}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->getChannels()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;-><init>(JLjava/util/List;Z)V

    return-object p4

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onMultiFactorAuthenticationRequest(Landroid/content/Context;Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASResponse;Lcom/ca/mas/foundation/MASMultiFactorHandler;)V
    .locals 0

    .line 1
    check-cast p4, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ca/mas/foundation/MASOtpMultiFactorAuthenticator;->onMultiFactorAuthenticationRequest(Landroid/content/Context;Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASResponse;Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;)V

    return-void
.end method

.method protected onMultiFactorAuthenticationRequest(Landroid/content/Context;Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASResponse;Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ca/mas/foundation/MASRequest;",
            "Lcom/ca/mas/foundation/MASResponse<",
            "*>;",
            "Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->e()Lcom/ca/mas/foundation/MASAuthenticationListener;

    move-result-object p2

    if-nez p2, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/ca/mas/foundation/MASOtpMultiFactorAuthenticator;->a()Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_2

    .line 4
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 5
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "com.ca.mas.core.service.req.extra.auth.otp.handler"

    .line 6
    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lcom/ca/mas/foundation/MASAuthenticationListener;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is required for otp authentication."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MAS"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->e()Lcom/ca/mas/foundation/MASAuthenticationListener;

    move-result-object p1

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Lcom/ca/mas/foundation/MASAuthenticationListener;->onOtpAuthenticateRequest(Landroid/content/Context;Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;)V

    :cond_2
    :goto_0
    return-void
.end method

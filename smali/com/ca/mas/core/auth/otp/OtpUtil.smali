.class public Lcom/ca/mas/core/auth/otp/OtpUtil;
.super Ljava/lang/Object;
.source "OtpUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "invalid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "generated"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "required"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "expired"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "suspended"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->UNKNOWN:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    return-object p0

    .line 3
    :pswitch_0
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->INVALID:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->GENERATED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->REQUIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->EXPIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    return-object p0

    .line 7
    :pswitch_4
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;->SUSPENDED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x630a7225 -> :sswitch_4
        -0x4e0958db -> :sswitch_3
        -0x176ed461 -> :sswitch_2
        0x111a998f -> :sswitch_1
        0x74cff1f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertOtpErrorCodeToEnum(Ljava/lang/String;)Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "8000500"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "8000400"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "8000145"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "8000144"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "8000143"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "8000142"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "8000140"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->UNKNOWN:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-object p0

    .line 3
    :pswitch_0
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->INTERNAL_SERVER_ERROR:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->INVALID_USER_INPUT:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->SUSPENDED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->OTP_MAX_RETRY_EXCEEDED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-object p0

    .line 7
    :pswitch_4
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->EXPIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-object p0

    .line 8
    :pswitch_5
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->OTP_INVALID:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-object p0

    .line 9
    :pswitch_6
    sget-object p0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;->REQUIRED:Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x18ff738b -> :sswitch_6
        -0x18ff7389 -> :sswitch_5
        -0x18ff7388 -> :sswitch_4
        -0x18ff7387 -> :sswitch_3
        -0x18ff7386 -> :sswitch_2
        -0x18ff68c4 -> :sswitch_1
        -0x18ff6503 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getXotpValueFromHeaders(Ljava/util/Map;)Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;

    invoke-direct {v0}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;-><init>()V

    if-eqz p0, :cond_4

    const-string v1, "X-OTP"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lcom/ca/mas/core/auth/otp/OtpUtil;->a(Ljava/lang/String;)Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->setxOtpValue(Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_OTP_VALUE;)V

    :cond_0
    const-string v1, "X-OTP-CHANNEL"

    .line 7
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ","

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->setChannels(Ljava/util/List;)V

    :cond_1
    const-string v1, "X-OTP-RETRY"

    .line 12
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v3, ""

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->setRetry(I)V

    :cond_2
    const-string v1, "X-OTP-RETRY-INTERVAL"

    .line 17
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->setRetryInterval(I)V

    :cond_3
    const-string v1, "x-ca-err"

    .line 22
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_4

    .line 23
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 24
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 25
    invoke-static {p0}, Lcom/ca/mas/core/auth/otp/OtpUtil;->convertOtpErrorCodeToEnum(Ljava/lang/String;)Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;

    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders;->setErrorCode(Lcom/ca/mas/core/auth/otp/model/OtpResponseHeaders$X_CA_ERROR;)V

    :cond_4
    return-object v0
.end method

.method public static parseOtpResponseBody(Ljava/lang/String;)Lcom/ca/mas/core/auth/otp/model/OtpResponseBody;
    .locals 2

    .line 1
    new-instance v0, Lcom/ca/mas/core/auth/otp/model/OtpResponseBody;

    invoke-direct {v0}, Lcom/ca/mas/core/auth/otp/model/OtpResponseBody;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    .line 3
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/auth/otp/model/OtpResponseBody;->setError(Ljava/lang/String;)V

    const-string p0, "error_description"

    .line 4
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/auth/otp/model/OtpResponseBody;->setErrorDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

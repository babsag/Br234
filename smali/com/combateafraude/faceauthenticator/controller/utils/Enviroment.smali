.class public Lcom/combateafraude/faceauthenticator/controller/utils/Enviroment;
.super Ljava/lang/Object;
.source "Enviroment.java"


# static fields
.field public static final ANALYTICS_BASE_URL_PROD:Ljava/lang/String; = "https://api.analytics.combateafraude.com"

.field public static final CAF_BASE_URL_BETA:Ljava/lang/String; = "https://api.beta.combateafraude.com"

.field public static final CAF_BASE_URL_PROD:Ljava/lang/String; = "https://api.combateafraude.com"

.field public static final MOBILE_BASE_URL_BETA:Ljava/lang/String; = "https://api.beta.mobile.combateafraude.com"

.field public static final MOBILE_BASE_URL_PROD:Ljava/lang/String; = "https://api.mobile.combateafraude.com"

.field public static final MOBILE_BASE_URL_SP:Ljava/lang/String; = "https://api.public.combateafraude.com/v1/services/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthenticationPath(Lcom/combateafraude/faceauthenticator/input/CafStage;)[Ljava/lang/String;
    .locals 3

    const-string v0, "authenticate"

    const-string v1, "faces"

    if-nez p0, :cond_0

    .line 1
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    .line 3
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "face"

    const-string v0, "authentication"

    .line 4
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseURL(Lcom/combateafraude/faceauthenticator/input/CafStage;Lcom/combateafraude/faceauthenticator/input/UrlType;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, "https://api.combateafraude.com"

    const-string v1, "https://api.analytics.combateafraude.com"

    const/4 v2, 0x2

    const-string v3, "https://api.mobile.combateafraude.com"

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "https://api.beta.combateafraude.com"

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    if-nez p0, :cond_6

    return-object v3

    .line 3
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_8

    if-eq p0, v2, :cond_7

    move-object v0, v3

    goto :goto_0

    :cond_7
    const-string v0, "https://api.public.combateafraude.com/v1/services/"

    goto :goto_0

    :cond_8
    const-string v0, "https://api.beta.mobile.combateafraude.com"

    :goto_0
    return-object v0
.end method

.method public static getTokenPath(Lcom/combateafraude/faceauthenticator/input/CafStage;)Ljava/lang/String;
    .locals 2

    const-string v0, "verify"

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "status"

    return-object p0
.end method

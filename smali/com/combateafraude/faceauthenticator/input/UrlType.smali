.class public final enum Lcom/combateafraude/faceauthenticator/input/UrlType;
.super Ljava/lang/Enum;
.source "UrlType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/faceauthenticator/input/UrlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/faceauthenticator/input/UrlType;

.field public static final enum ANALYTICS_URL:Lcom/combateafraude/faceauthenticator/input/UrlType;

.field public static final enum BASE_API_URL:Lcom/combateafraude/faceauthenticator/input/UrlType;

.field public static final enum MOBILE_URL:Lcom/combateafraude/faceauthenticator/input/UrlType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/combateafraude/faceauthenticator/input/UrlType;

    const-string v1, "MOBILE_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/input/UrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/input/UrlType;->MOBILE_URL:Lcom/combateafraude/faceauthenticator/input/UrlType;

    .line 2
    new-instance v1, Lcom/combateafraude/faceauthenticator/input/UrlType;

    const-string v3, "ANALYTICS_URL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/combateafraude/faceauthenticator/input/UrlType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/combateafraude/faceauthenticator/input/UrlType;->ANALYTICS_URL:Lcom/combateafraude/faceauthenticator/input/UrlType;

    .line 3
    new-instance v3, Lcom/combateafraude/faceauthenticator/input/UrlType;

    const-string v5, "BASE_API_URL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/combateafraude/faceauthenticator/input/UrlType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/combateafraude/faceauthenticator/input/UrlType;->BASE_API_URL:Lcom/combateafraude/faceauthenticator/input/UrlType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/combateafraude/faceauthenticator/input/UrlType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/combateafraude/faceauthenticator/input/UrlType;->$VALUES:[Lcom/combateafraude/faceauthenticator/input/UrlType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/faceauthenticator/input/UrlType;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/faceauthenticator/input/UrlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/faceauthenticator/input/UrlType;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/faceauthenticator/input/UrlType;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/input/UrlType;->$VALUES:[Lcom/combateafraude/faceauthenticator/input/UrlType;

    invoke-virtual {v0}, [Lcom/combateafraude/faceauthenticator/input/UrlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/faceauthenticator/input/UrlType;

    return-object v0
.end method

.class public final enum Lcom/combateafraude/faceauthenticator/input/CafStage;
.super Ljava/lang/Enum;
.source "CafStage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/faceauthenticator/input/CafStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/faceauthenticator/input/CafStage;

.field public static final enum BETA:Lcom/combateafraude/faceauthenticator/input/CafStage;

.field public static final enum OTHER:Lcom/combateafraude/faceauthenticator/input/CafStage;

.field public static final enum PROD:Lcom/combateafraude/faceauthenticator/input/CafStage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/combateafraude/faceauthenticator/input/CafStage;

    const-string v1, "BETA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/input/CafStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/input/CafStage;->BETA:Lcom/combateafraude/faceauthenticator/input/CafStage;

    .line 2
    new-instance v1, Lcom/combateafraude/faceauthenticator/input/CafStage;

    const-string v3, "PROD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/combateafraude/faceauthenticator/input/CafStage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/combateafraude/faceauthenticator/input/CafStage;->PROD:Lcom/combateafraude/faceauthenticator/input/CafStage;

    .line 3
    new-instance v3, Lcom/combateafraude/faceauthenticator/input/CafStage;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/combateafraude/faceauthenticator/input/CafStage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/combateafraude/faceauthenticator/input/CafStage;->OTHER:Lcom/combateafraude/faceauthenticator/input/CafStage;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/combateafraude/faceauthenticator/input/CafStage;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/combateafraude/faceauthenticator/input/CafStage;->$VALUES:[Lcom/combateafraude/faceauthenticator/input/CafStage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/faceauthenticator/input/CafStage;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/faceauthenticator/input/CafStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/faceauthenticator/input/CafStage;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/faceauthenticator/input/CafStage;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/input/CafStage;->$VALUES:[Lcom/combateafraude/faceauthenticator/input/CafStage;

    invoke-virtual {v0}, [Lcom/combateafraude/faceauthenticator/input/CafStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/faceauthenticator/input/CafStage;

    return-object v0
.end method

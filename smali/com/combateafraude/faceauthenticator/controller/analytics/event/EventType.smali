.class public final enum Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;
.super Ljava/lang/Enum;
.source "EventType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "DEBUG",
        "INFO",
        "WARNING",
        "ERROR",
        "OTHER",
        "FaceAuthenticator_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

.field public static final enum DEBUG:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

.field public static final enum ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

.field public static final enum INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

.field public static final enum OTHER:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

.field public static final enum WARNING:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;


# instance fields
.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->DEBUG:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const-string v1, "INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const-string v1, "WARNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->WARNING:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const-string v1, "OTHER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->OTHER:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->a()[Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    move-result-object v0

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->$VALUES:[Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->type:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->DEBUG:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->WARNING:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->OTHER:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;
    .locals 1

    const-class v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;
    .locals 1

    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->$VALUES:[Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->type:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;
.super Ljava/lang/Enum;
.source "EventType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

.field public static final enum DEBUG:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

.field public static final enum ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

.field public static final enum INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

.field public static final enum OTHER:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

.field public static final enum WARNING:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;


# instance fields
.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->DEBUG:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const-string v1, "INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const-string v1, "WARNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->WARNING:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const-string v1, "OTHER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->OTHER:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    invoke-static {}, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->a()[Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    move-result-object v0

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->$VALUES:[Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

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

    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->type:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->DEBUG:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->WARNING:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->OTHER:Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;
    .locals 1

    const-class v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;
    .locals 1

    sget-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->$VALUES:[Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/analytics/event/EventType;->type:Ljava/lang/String;

    return-object v0
.end method

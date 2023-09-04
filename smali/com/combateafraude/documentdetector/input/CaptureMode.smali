.class public final enum Lcom/combateafraude/documentdetector/input/CaptureMode;
.super Ljava/lang/Enum;
.source "CaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/documentdetector/input/CaptureMode;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/documentdetector/input/CaptureMode;

.field public static final enum AUTOMATIC:Lcom/combateafraude/documentdetector/input/CaptureMode;

.field public static final enum MANUAL:Lcom/combateafraude/documentdetector/input/CaptureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/input/CaptureMode;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/documentdetector/input/CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/documentdetector/input/CaptureMode;->AUTOMATIC:Lcom/combateafraude/documentdetector/input/CaptureMode;

    new-instance v1, Lcom/combateafraude/documentdetector/input/CaptureMode;

    const-string v3, "MANUAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/combateafraude/documentdetector/input/CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/combateafraude/documentdetector/input/CaptureMode;->MANUAL:Lcom/combateafraude/documentdetector/input/CaptureMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/combateafraude/documentdetector/input/CaptureMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/combateafraude/documentdetector/input/CaptureMode;->$VALUES:[Lcom/combateafraude/documentdetector/input/CaptureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/CaptureMode;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/documentdetector/input/CaptureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/input/CaptureMode;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/documentdetector/input/CaptureMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/input/CaptureMode;->$VALUES:[Lcom/combateafraude/documentdetector/input/CaptureMode;

    invoke-virtual {v0}, [Lcom/combateafraude/documentdetector/input/CaptureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/documentdetector/input/CaptureMode;

    return-object v0
.end method

.class public final enum Lcom/combateafraude/documentdetector/controller/utils/Mask;
.super Ljava/lang/Enum;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/documentdetector/controller/utils/Mask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/documentdetector/controller/utils/Mask;

.field public static final enum ERROR:Lcom/combateafraude/documentdetector/controller/utils/Mask;

.field public static final enum NORMAL:Lcom/combateafraude/documentdetector/controller/utils/Mask;

.field public static final enum SUCCESS:Lcom/combateafraude/documentdetector/controller/utils/Mask;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/controller/utils/Mask;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/documentdetector/controller/utils/Mask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/utils/Mask;->NORMAL:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    .line 2
    new-instance v1, Lcom/combateafraude/documentdetector/controller/utils/Mask;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/combateafraude/documentdetector/controller/utils/Mask;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/combateafraude/documentdetector/controller/utils/Mask;->ERROR:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    .line 3
    new-instance v3, Lcom/combateafraude/documentdetector/controller/utils/Mask;

    const-string v5, "SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/combateafraude/documentdetector/controller/utils/Mask;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/combateafraude/documentdetector/controller/utils/Mask;->SUCCESS:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/combateafraude/documentdetector/controller/utils/Mask;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/combateafraude/documentdetector/controller/utils/Mask;->$VALUES:[Lcom/combateafraude/documentdetector/controller/utils/Mask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/utils/Mask;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/utils/Mask;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/documentdetector/controller/utils/Mask;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/controller/utils/Mask;->$VALUES:[Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-virtual {v0}, [Lcom/combateafraude/documentdetector/controller/utils/Mask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/documentdetector/controller/utils/Mask;

    return-object v0
.end method

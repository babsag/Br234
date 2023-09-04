.class public final enum Lcom/combateafraude/documentdetector/input/Resolution;
.super Ljava/lang/Enum;
.source "Resolution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/documentdetector/input/Resolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/documentdetector/input/Resolution;

.field public static final enum FULL_HD:Lcom/combateafraude/documentdetector/input/Resolution;

.field public static final enum HD:Lcom/combateafraude/documentdetector/input/Resolution;

.field public static final enum QUAD_HD:Lcom/combateafraude/documentdetector/input/Resolution;

.field public static final enum ULTRA_HD:Lcom/combateafraude/documentdetector/input/Resolution;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/input/Resolution;

    const-string v1, "HD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/documentdetector/input/Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/documentdetector/input/Resolution;->HD:Lcom/combateafraude/documentdetector/input/Resolution;

    .line 2
    new-instance v1, Lcom/combateafraude/documentdetector/input/Resolution;

    const-string v3, "FULL_HD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/combateafraude/documentdetector/input/Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/combateafraude/documentdetector/input/Resolution;->FULL_HD:Lcom/combateafraude/documentdetector/input/Resolution;

    .line 3
    new-instance v3, Lcom/combateafraude/documentdetector/input/Resolution;

    const-string v5, "QUAD_HD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/combateafraude/documentdetector/input/Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/combateafraude/documentdetector/input/Resolution;->QUAD_HD:Lcom/combateafraude/documentdetector/input/Resolution;

    .line 4
    new-instance v5, Lcom/combateafraude/documentdetector/input/Resolution;

    const-string v7, "ULTRA_HD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/combateafraude/documentdetector/input/Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/combateafraude/documentdetector/input/Resolution;->ULTRA_HD:Lcom/combateafraude/documentdetector/input/Resolution;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/combateafraude/documentdetector/input/Resolution;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/combateafraude/documentdetector/input/Resolution;->$VALUES:[Lcom/combateafraude/documentdetector/input/Resolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/Resolution;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/documentdetector/input/Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/input/Resolution;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/documentdetector/input/Resolution;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/input/Resolution;->$VALUES:[Lcom/combateafraude/documentdetector/input/Resolution;

    invoke-virtual {v0}, [Lcom/combateafraude/documentdetector/input/Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/documentdetector/input/Resolution;

    return-object v0
.end method

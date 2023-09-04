.class public final enum Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;
.super Ljava/lang/Enum;
.source "ValidationFailure.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

.field public static final enum FRAMING_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

.field public static final enum PASSPORT_COUNTRY_CODE_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

.field public static final enum QUALITY_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

.field public static final enum SENSOR_LUMINOSITY_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

.field public static final enum SENSOR_ORIENTATION_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

.field public static final enum SENSOR_STABILITY_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

.field public static final enum TYPIFICATION_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    const-string v1, "SENSOR_LUMINOSITY_FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->SENSOR_LUMINOSITY_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    .line 2
    new-instance v1, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    const-string v3, "SENSOR_ORIENTATION_FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->SENSOR_ORIENTATION_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    .line 3
    new-instance v3, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    const-string v5, "SENSOR_STABILITY_FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->SENSOR_STABILITY_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    .line 4
    new-instance v5, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    const-string v7, "FRAMING_FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->FRAMING_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    .line 5
    new-instance v7, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    const-string v9, "TYPIFICATION_FAILURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->TYPIFICATION_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    .line 6
    new-instance v9, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    const-string v11, "QUALITY_FAILURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->QUALITY_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    .line 7
    new-instance v11, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    const-string v13, "PASSPORT_COUNTRY_CODE_FAILURE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->PASSPORT_COUNTRY_CODE_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->$VALUES:[Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->$VALUES:[Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    invoke-virtual {v0}, [Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    return-object v0
.end method
